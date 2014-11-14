class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :pocket_id
      t.string :description
      t.float :amount
      t.integer :type

      t.timestamps
    end
  end
end
