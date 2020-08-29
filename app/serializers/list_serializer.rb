class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :date
  has_many :house_works
end
