class Unit < ApplicationRecord
  belongs_to :building
  has_many :tasks, dependent: :destroy
end
