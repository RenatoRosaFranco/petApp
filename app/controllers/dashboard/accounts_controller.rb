# frozen_string_literal: true

module Dashboard
	class AccountsController < ApplicationController
		before_action :set_account, only: [:edit, :update, :destroy]
		respond_to :html, :json, :js

		def index
			@account = current_user
			respond_with(@account)
		end

		def edit
			respond_with(@account)
		end

		def update
			@account.update(account_params)
			respond_with(@account)
		end

		def destroy
			@account.destroy
			respond_with(@account)
		end

		private

		def set_account
			@account = current_user
		end

		def account_params
			params.require(:account)
				.permit(:email, :password, :password_confirmation)
		end
	end
end