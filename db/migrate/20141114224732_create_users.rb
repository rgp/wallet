class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_salt
      t.string :password_salted

      t.timestamps
    end
  end
end