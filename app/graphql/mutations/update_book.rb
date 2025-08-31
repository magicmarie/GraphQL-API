module Mutations
  class UpdateBook < BaseMutation
    argument :id, ID, required: true
    argument :title, String, required: false
    argument :authorId, ID, required: false, as: :author_id

    field :book, Types::BookType, null: true
    field :errors, [ String ], null: false

    def resolve(id:, title: nil, author_id: nil)
      book = Book.find_by(id: id)
      return { book: nil, errors: [ "Book not found" ] } unless book

      updates = {}
      updates[:title] = title unless title.nil?
      updates[:author_id] = author_id unless author_id.nil?

      if book.update(updates)
        { book: book, errors: [] }
      else
        { book: nil, errors: book.errors.full_messages }
      end
    end
  end
end
