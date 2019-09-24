# frozen_string_literal: true

class Region < ApplicationRecord
	include BrPopulate

	self.table_name   = 'regions'
	self.prmimary_key = 'id'

	has_many :states, dependent: :destroy

	def self.populate_data
		BrPopulate.populate
	end
end
