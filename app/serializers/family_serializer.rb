class FamilySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users
end
