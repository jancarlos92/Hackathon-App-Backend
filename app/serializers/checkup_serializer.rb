class CheckupSerializer < ActiveModel::Serializer
  attributes :id, :diagnosis, :treatment
  belongs_to :user
  belongs_to :practioner
end
