class AddIsAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :is_admin, :boolean, :default => false
    add_index  :users, :is_admin
  end

  def self.down
    remove_column :users, :is_admin
  end
end
