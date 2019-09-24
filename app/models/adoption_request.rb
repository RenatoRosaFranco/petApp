# frozen_string_literal: true

class AdoptionRequest < ApplicationRecord
 	self.table_name  = 'adoption_requests'
 	self.primary_key = 'id'

  belongs_to :pet
  belongs_to :user
end
