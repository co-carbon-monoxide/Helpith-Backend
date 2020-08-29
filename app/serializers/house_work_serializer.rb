class HouseWorkSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :list_id
  belongs_to :list
end
