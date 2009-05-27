class CreateUserSessions < ActiveRecord::Migration
  def self.up
    create_table :user_sessions, :force => true do |t|
      t.string :login
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :user_sessions
  end
end
