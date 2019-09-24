# frozen_string_literal: true

module Dashboard
	class ProfilesController < HomeController
		before_action :set_profile, only: [:show, :edit, :update]
		respond_to :html, :json, :js

		def index
			@profile = current_user.profile
			respond_with(@profile)
		end

		def show
			respond_with(@profile)
		end

		def edit
			respond_with(@profile)
		end

		def update
			@profile.update(profile_params)
			respond_with(@profile)
		end

		private

		def set_profile
			@profile = Profile.find(params[:id])
		end

		def profile_params
			params.require(:profile)
				.permit()
		end
	end	
end