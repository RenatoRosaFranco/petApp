class CreatePetRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_races do |t|
      t.string :name
      t.text :description
      t.references :pet_type, foreign_key: true
      t.string :slug
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
