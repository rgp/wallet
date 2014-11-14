class CreatePockets < ActiveRecord::Migration
  def change
    create_table :pockets do |t|
      t.integer :user_id
      t.float :balance

      t.timestamps
    end
  end
end
