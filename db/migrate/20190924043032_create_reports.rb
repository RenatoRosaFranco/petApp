class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :reportable_id
      t.string :reportable_type
      t.text :motive
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
