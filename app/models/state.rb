# frozen_string_literal: true

class State < ApplicationRecord
	self.table_name  = 'states'
	self.primary_key = 'id'

	has_many :cities, dependent: :destroy
  belongs_to :region
end
