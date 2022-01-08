class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.string :status, default: "pending"
      t.string :address
      t.datetime :date_time
      t.string :details
      t.references :user1
      t.references :user2

      t.timestamps
    end
    add_foreign_key :invitations, :users, column: :user1_id, primary_key: :id
    add_foreign_key :invitations, :users, column: :user2_id, primary_key: :id
  end
end
