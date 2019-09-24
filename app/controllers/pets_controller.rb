# frozen_string_literal: true
class PetsController < ApplicationController
	before_action :set_pet, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
	respond_to :html, :json, :js

	def index
		@pets = Pet.all
		respond_with(@pets)
	end

	def new
		@pet = Pet.new
		respond_with(@pet)
	end

	def show
		respond_with(@pet)
	end

	def edit
		respond_with(@pet)
	end

	def update
		@pet.update(pet_params)
		respond_with(@pet)
	end

	def destroy
		@pet.destroy
		respond_with(@pet)
	end

	private

	def set_pet
		@pet = Pet.find(params[:id])
	end

	def pet_params
		params.require(:pet)
			.permit()
	end
end