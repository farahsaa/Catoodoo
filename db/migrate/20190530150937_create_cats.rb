class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |table|
      table.string :bio
      table.string :email
      table.string :name, null: false
    end

    add_index :cats, :name
    add_index :cats, :email
    
  end
end
