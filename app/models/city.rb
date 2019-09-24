# frozen_string_literal: true

class City < ApplicationRecord
	self.table_name  = 'cities'
	self.primary_key = 'id'

  belongs_to :state
end
