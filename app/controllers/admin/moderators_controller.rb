class Admin::ModeratorsController < ApplicationController

	def index
		@moderators = Moderator.all
	end

	def edit
		@moderator = Moderator.find(params[:id])
	end

	def update
		@moderator = Moderator.find(params[:id])
		if @moderator.update(moderator_params)
			flash[:notice] = "Moderator Updated"
			redirect_to admin_moderators_url
		else
			flash[:warning] = "Moderator update failed"
			render 'edit'
		end
	end

	private

	def moderator_params
		params.require(:moderator).permit(:id,:username,:fullname,:password)
	end

end
