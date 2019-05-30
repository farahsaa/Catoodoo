class CreateSchedule < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |table|
      table.datetime :scheduled_at
      table.datetime :completed_at
    end
    add_index :schedules, [:cat_id, :scheduled_at]
  end
end
