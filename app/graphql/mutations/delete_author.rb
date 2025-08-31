module Mutations
  class DeleteAuthor < BaseMutation
    argument :id, ID, required: true

    field :success, Boolean, null: false
    field :errors, [ String ], null: false

    def resolve(id:)
      author = Author.find_by(id: id)
      return { success: false, errors: [ "Author not found" ] } unless author

      if author.destroy
        { success: true, errors: [] }
      else
        { success: false, errors: author.errors.full_messages }
      end
    end
  end
end
