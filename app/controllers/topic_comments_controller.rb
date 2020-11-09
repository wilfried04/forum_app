class TopicCommentsController < ApplicationController
	
	before_action :authenticate_user!
	before_action :find_topic , :find_user

	def new 
		@comment = @topic.comments.build
	end

	def create
		@comment = @topic.comments.build( write_comment )
		if @comment.save
			flash[:notice] = "Successful reply"
			redirect_to topic_path(@topic)
			respond_to do |format|
				format.html {
					flash[:notice] = "Successful reply"
					redirect_to topic_path(@topic)
				}
				format.js
			end
		else
			respond_to do |format|
				format.html {render "new"}
				format.js
			end	
		end
	end

	def edit
		@comment = @topic.comments.find(params[:id])
	end

	def update
		@comment = @topic.comments.find(params[:id])
		if @comment.update(write_comment)
			flash[:notice]
			redirect_to topic_path(@topic)
		else
			render "edit"
		end
	end

	def destroy
		@comment = @topic.comments.find(params[:id])
		@comment.destroy

		respond_to do |format|
			format.html {
				flash[:alert] = "successfully deleted"
				redirect_to topic_path(@topic) 
			}
			format.js
		end
		
	end



	private

	def find_topic
		@topic = Topic.find(params[:topic_id])
	end

	def write_comment
		params.require(:comment).permit(:draft , :content , :user_id , :avatar)
	end

	def find_user
		@user = current_user
	end

end
