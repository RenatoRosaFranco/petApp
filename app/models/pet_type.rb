# frozen_string_literal: true

class PetType < ApplicationRecord
 	self.table_name  = 'pet_types'
 	self.primary_key = 'id'

 	has_many :pet_races, dependent: :destroy
  belongs_to :user
end
