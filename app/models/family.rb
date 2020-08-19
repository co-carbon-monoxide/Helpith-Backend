class Family < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :lists, dependent: :destroy
end
