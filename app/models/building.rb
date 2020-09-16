class Building < ApplicationRecord
  has_many :units, dependent: :destroy
end
