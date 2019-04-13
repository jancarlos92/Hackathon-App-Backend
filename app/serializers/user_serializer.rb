class UserSerializer < ActiveModel::Serializer
    has_many :checkups
  attributes :id, :name, :dob, :email
end
