class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
    t.string :body
    t.belongs_to :user
    t.belongs_to :chat_room
      t.timestamps
    end
  end
end
