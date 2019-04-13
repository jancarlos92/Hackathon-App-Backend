class PractionerSerializer < ActiveModel::Serializer
  has_many :authorizations
  attributes :id, :name, :company

end
