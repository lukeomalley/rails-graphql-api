# frozen_string_literal: true

module Types
  class BookType < Types::BaseObject
    field :title, String, null: false
    field :author, String, null: false
    field :rating, Integer, null: false
    field :cover_img_url, String, null: false
  end
end
