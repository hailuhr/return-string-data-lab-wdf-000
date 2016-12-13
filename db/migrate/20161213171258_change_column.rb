class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :products, :inventory, :integer, :default => 1
  end
end
