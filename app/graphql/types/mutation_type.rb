# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :user_delete, mutation: Mutations::UserDelete
    field :blog_update, mutation: Mutations::BlogUpdate
    field :blog_delete, mutation: Mutations::BlogDelete
    field :user_create, mutation: Mutations::UserCreate
    field :blog_create, mutation: Mutations::BlogCreate
  end
end
