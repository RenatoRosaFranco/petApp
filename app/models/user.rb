# frozen_string_literal: true

class User < ApplicationRecord
	self.table_name  = 'users'
	self.primary_key = 'id'

	has_one :profile, dependent: :destroy

	after_create :create_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
