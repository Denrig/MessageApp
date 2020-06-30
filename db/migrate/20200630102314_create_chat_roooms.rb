class CreateChatRoooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_rooms do |t|
    	t.string :title
    	t.string :desc
      t.timestamps
    end
    create_table :messages do |t|
    	t.belongs_to :chat_room
    	t.belongs_to :user
    	t.text :message
    	t.timestamps
  	end
  end
end
