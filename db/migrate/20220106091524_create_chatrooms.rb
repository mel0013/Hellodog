class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.references :user1
      t.references :user2
    end

    add_foreign_key :chatrooms, :users, column: :user1_id, primary_key: :id
    add_foreign_key :chatrooms, :users, column: :user2_id, primary_key: :id
  end
end
