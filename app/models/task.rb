class Task < ApplicationRecord
  has_many :schedules
  has_many :cats, through: :schedules
  validates :title, presence: true
end
