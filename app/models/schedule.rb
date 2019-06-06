class Schedule < ApplicationRecord
  belongs_to :task
  belongs_to :cat
  validates :cat, presence: true
  validates :task, presence: true
  def status 
    if self.completed_at 
      'completed'
    elsif self.scheduled_at
      'scheduled'
    else 
      'not scheduled'
    end
  end
end
