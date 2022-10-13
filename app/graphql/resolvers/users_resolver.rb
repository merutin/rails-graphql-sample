module Resolvers
  class UsersResolver < Resolvers::BaseResolver
		description 'Find a post by ID'
    type Types::UserType.connection_type, null: false

    def resolve
      ::User.includes(:user_detail).includes(:user).all
    end
  end
end