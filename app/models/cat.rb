class Cat < ApplicationRecord
  has_many :schedules
  has_many :tasks, through: :schedules
  validates :name, presence: true
end
