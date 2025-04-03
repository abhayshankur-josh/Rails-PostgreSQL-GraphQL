class User < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :email, uniqueness: true
    has_many :blogs, dependent: :destroy
    before_save { self.email = email.downcase }
end
