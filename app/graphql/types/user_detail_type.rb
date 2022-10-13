# frozen_string_literal: true

module Types
  class UserDetailType < Types::BaseObject
    field :id, ID, null: false
    field :memo, String
    field :address, String
    field :user_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
