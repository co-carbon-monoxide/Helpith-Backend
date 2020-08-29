class HouseWorkSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :done, :list_id, :user_id
  belongs_to :list
end
