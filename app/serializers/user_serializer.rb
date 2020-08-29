class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest
  belongs_to :family
end
