class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :birth_month
      t.integer :birth_year
      t.string :gender
      t.string :size
      t.string :breed
      t.string :energy_level
      t.string :vaccinated
      t.string :neutered
      t.string :suburb
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
