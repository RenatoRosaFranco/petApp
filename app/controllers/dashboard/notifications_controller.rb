# frozen_string_literal: true

module Dashboard
	class NotificationsController < HomeController
		before_action :set_notification, only: [:show]
		respond_to :html, :json, :js

		def index
			@notifications = Notification.all
			respond_with(@notifications)
		end

		def show
			respond_with(@notification)
		end

		private

		def set_notification
			@notification = Notification.find(params[:id])
		end
	end
end