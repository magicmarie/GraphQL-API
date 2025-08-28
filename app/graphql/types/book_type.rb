# frozen_string_literal: true

module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :author_id, Integer, null: false
    field :author, Types::AuthorType, null: false
  end
end
