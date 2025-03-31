# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :user_create, mutation: Mutations::UserCreate
    field :blog_create, mutation: Mutations::BlogCreate
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field(text:)
      text
    end
  end
end
