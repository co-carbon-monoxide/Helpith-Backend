class User < ApplicationRecord
  has_many :house_works, dependent: :destroy
  belongs_to :family
end
