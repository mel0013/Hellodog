class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.string :status
      t.string :address
      t.datetime :date_time
      t.string :details

      t.timestamps
    end
  end
end
