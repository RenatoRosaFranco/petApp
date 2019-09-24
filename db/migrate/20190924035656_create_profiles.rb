# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table   :profiles do |t|
      t.string     :avatar
      t.string     :name
      t.text       :bio
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
