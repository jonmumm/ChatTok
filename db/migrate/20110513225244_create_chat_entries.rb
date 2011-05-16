class CreateChatEntries < ActiveRecord::Migration
  def self.up
    create_table :chat_entries do |t|
      t.text :body
      t.string :connectionId

      t.timestamps
    end
  end

  def self.down
    drop_table :chat_entries
  end
end
