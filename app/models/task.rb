class Task < ApplicationRecord
  has_many :schedules
  has_many :cats, through: :schedules
end
