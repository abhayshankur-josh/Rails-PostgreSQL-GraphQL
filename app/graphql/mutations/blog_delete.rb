# frozen_string_literal: true

module Mutations
  class BlogDelete < BaseMutation
    description "Deletes a blog by ID"

    field :message, String, null: false

    argument :id, ID, required: true

    def resolve(id:)
      blog = ::Blog.find(id)
      raise GraphQL::ExecutionError.new "Error deleting blog", extensions: blog.errors.to_hash unless blog.destroy!

      { message: 'Blog deleted successfully' }
    end
  end
end
