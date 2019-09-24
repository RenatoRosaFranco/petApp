# frozen_string_literal: true

class Favorite < ApplicationRecord
  self.table_name  = 'favorites'
  self.primary_key = 'id'

  belongs_to :favoritable, polymorphic: true
  belongs_to :user
end
