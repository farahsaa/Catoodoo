class DescribeRelationships < ActiveRecord::Migration[6.0]
  def change
    change_table :schedules do |table|
      table.belongs_to :task
      table.belongs_to :cat
    end
  end
end
