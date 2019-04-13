class User < ApplicationRecord
    has_many :checkups
    has_many :authorizations
end
