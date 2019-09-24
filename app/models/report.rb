# frozen_string_literal: true

class Report < ApplicationRecord
  self.table_name  = 'reports'
  self.primary_key = 'id'

  belongs_to :reportable, polymorphic: true
  belongs_to :user
end
