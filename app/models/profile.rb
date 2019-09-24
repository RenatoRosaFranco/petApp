# frozen_string_literal: true

class Profile < ApplicationRecord
  self.table_name  = 'profiles'
  self.primary_key = 'id'

  belongs_to :state, optional: true
  belongs_to :city,  optional: true
  belongs_to :user
end
