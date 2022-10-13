# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :microposts, [Types::MicropostType]
    field :address, String, null: true
    field :memo, String, null: true
    field :user_name, String, null: true
  end
end
