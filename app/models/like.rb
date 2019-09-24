# frozen_string_literal: true

class Like < ApplicationRecord
	self.table_name  = 'likes'
	self.primary_key = 'id'

	belongs_to :likeable, polymorphic: true
  belongs_to :user
end
