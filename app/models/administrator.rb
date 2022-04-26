class Administrator < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :email, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  }
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
end
