# frozen_string_literal: true

module Types
  class MicropostDetailType < Types::BaseObject
    field :id, ID, null: false
    field :content, String
    field :micropost_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
