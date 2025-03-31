# frozen_string_literal: true

module Mutations
  class UserCreate < BaseMutation
    description "Creates a new user"

    field :user, Types::UserType, null: false

    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :email, String, required: true

    def resolve(first_name:, last_name:, email:)
      user = ::User.new(first_name:, last_name:, email:)
      raise GraphQL::ExecutionError.new "Error creating user", extensions: user.errors.to_hash unless user.save

      { user: user }
    end
  end
end
