class CreateChatMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_messages do |t|
      t.integer :client_id
      t.string :message

      t.timestamps
    end
  end
end
