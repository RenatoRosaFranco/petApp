class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthdate
      t.references :pet_type, foreign_key: true
      t.references :pet_race, foreign_key: true
      t.string :size
      t.string :gender
      t.boolean :vacined
      t.boolean :castred
      t.boolean :vermifuged
      t.boolean :chiped
      t.boolean :adopted
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
