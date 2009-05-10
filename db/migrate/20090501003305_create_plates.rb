class CreatePlates < ActiveRecord::Migration
  def self.up
    create_table :plates, :force => true do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :plates
  end
end
