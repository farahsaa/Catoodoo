class Cat < ApplicationRecord
  has_many :schedules, dependent: :destroy
  has_many :tasks, through: :schedules
  validates :name, presence: true
end
