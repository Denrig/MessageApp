class CreateChatRoooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_rooms do |t|
    	t.string :title
    	t.string :desc
      t.timestamps
    end
  end
end
