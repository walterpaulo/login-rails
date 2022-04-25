class Administrator < ApplicationRecord
    validates :name, :email, :password, presence: true
end
