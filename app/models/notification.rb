# frozen_string_literal: true

class Notification < ApplicationRecord
  self.table_name  = 'notifications'
  self.primary_key = 'id'

  belongs_to :user
end
