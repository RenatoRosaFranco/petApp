class CreateAdoptionRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :adoption_requests do |t|
      t.boolean :accepted_adoption
      t.references :pet, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
