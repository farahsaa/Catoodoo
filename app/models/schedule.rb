class Schedule < ApplicationRecord
  belongs_to :task
  belongs_to :cat
  validates :cat, presence: true
  validates :task, presence: true
end
