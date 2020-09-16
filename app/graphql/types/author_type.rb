# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    description 'author'
    field :id, ID, null: false
    field :name, String, null: false
    field :books, [Types::BookType], null: false,
                                       description: "This post's comments, or null if this post has comments disabled."
  end
end
