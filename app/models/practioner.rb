class Practioner < ApplicationRecord
    has_many :authorizations
    has_many :users, through: :authorizations
    has_many :checkups, through: :users

end
