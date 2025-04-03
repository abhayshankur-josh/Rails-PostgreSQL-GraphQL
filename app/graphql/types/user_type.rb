# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :user_name, String
    field :email, String
    
    def user_name
      "#{object.first_name} #{object.last_name}" 
    end
  end
end
