# frozen_string_literal: true

class User < ApplicationRecord
	self.table_name  = 'users'
	self.primary_key = 'id'

	has_one  :profile, dependent: :destroy
	has_many :notifications, dependent: :destroy
	has_many :pets, dependent: :destroy
	has_many :pet_types, dependent: :destroy
	has_many :pet_races, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :reports, dependent: :destroy

	after_create :create_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
