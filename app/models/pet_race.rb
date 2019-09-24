# frozen_string_literal: true

class PetRace < ApplicationRecord
	self.table_name  = 'pet_races'
	self.primary_key = 'id'

  belongs_to :pet_type
  belongs_to :user
end
