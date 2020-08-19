class HouseWork < ApplicationRecord
  has_many :task, dependent: :destroy
  belongs_to :list
end
