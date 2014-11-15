class CreateWTransactions < ActiveRecord::Migration
  def change
    create_table :w_transactions do |t|
      t.integer :pocket_id
      t.float :amount
      t.integer :type

      t.timestamps
    end
  end
end
