class RenameTypeToTipo < ActiveRecord::Migration
  def change
    rename_column :w_transactions, :type, :tipo
  end
end
