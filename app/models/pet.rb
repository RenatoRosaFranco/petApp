# frozen_string_literal: true

class Pet < ApplicationRecord
 	self.table_name  = 'pets'
 	self.primary_key = 'id'

  belongs_to :pet_type
  belongs_to :pet_race
  belongs_to :user
end
