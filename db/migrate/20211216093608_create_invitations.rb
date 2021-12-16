class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.datetime :datetime
      t.boolean :accepted
      t.string :details

      t.timestamps
    end
  end
end
