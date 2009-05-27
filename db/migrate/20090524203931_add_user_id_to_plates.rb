class AddUserIdToPlates < ActiveRecord::Migration
  def self.up
    add_column :plates, :user_id, :integer
  end

  def self.down
    remove_column :plates, :user_id
  end
end
