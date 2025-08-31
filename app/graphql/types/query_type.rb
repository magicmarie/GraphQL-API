# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :authors, [ Types::AuthorType ], null: false
    def authors
      Author.all
    end

    field :books, [ Types::BookType ], null: false
    def books
      Book.all
    end

    field :book, Types::BookType, null: true do
      argument :id, ID, required: true
    end

    field :author, Types::AuthorType, null: true do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find_by(id: id)
    end

    def book(id:)
      Book.find_by(id: id)
    end
  end
end
