module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
    # field :users, [Types::UserType], null: false
    field :users, resolver: Resolvers::UsersResolver
    # def users
      # User.all
      # [User.find('1').reload_user_detail]
      # User.all.map{|user|
      #   user.user_detail
      # }
    # end
    field :microposts, [Types::MicropostType], null: false
    def microposts
      Micropost.all
    end
  end
end