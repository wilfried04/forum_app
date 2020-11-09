class Admin::UsersController < ApplicationController

	before_action :authenticate_user! #Crawl individual devise Providing method, required entry
	before_action :authenticate_admin # Re-introduction
	
	def index
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(write_user)
			flash[:notice] = "OOOO"
			redirect_to admin_users_path
		else	
			render "edit"
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:alert] = "XXX"
		redirect_to admin_users_path
		
	end



	protected

	def write_user
		params.require(:user).permit(:nickname , :role)
	end

	def authenticate_admin
		unless current_user.admin?
		flash[:alert] = "Not allow!"
		redirect_to topics_path
		end
	end

end
