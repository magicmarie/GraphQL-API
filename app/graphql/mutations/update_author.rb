module Mutations
  class UpdateAuthor < BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: false

    field :author, Types::AuthorType, null: true
    field :errors, [String], null: false

    def resolve(id:, name: nil)
      author = Author.find_by(id: id)
      return { author: nil, errors: ["Author not found"] } unless author

      updates = {}
      updates[:name] = name unless name.nil?

      if author.update(updates)
        { author: author, errors: [] }
      else
        { author: nil, errors: author.errors.full_messages }
      end
    end
  end
end
