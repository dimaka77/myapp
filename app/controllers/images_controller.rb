class ImagesController < ApplicationController
	def index
		@images = Image.all
		@image = Image.new
	end

	def create
		@image = Image.new(image_params)

		if @image.save
			# Send Response: id/token for remove button; status 200 OK for Dropzone success
			render json: { message: "success", fileID: @image.id }, :status => 200
		else
			# Send Response: status 400 ERROR for Dropzone failure
			render json: { error: @image.errors.full_messages.join(',')}, :status => 400
		end     
	end

	def destroy
	   image = current_user.images.where(token: image_params[:token]).where(id: image_params[:id]).take  # Probably a little too redundant on security, but whatever
	   respond_to do |format|
	   	if Image.destroy(image.id)
	   		format.json { head :ok, :status => 200 }
	   	else
	   		format.json { render json: { error: @image.errors.full_messages }, :status => 400 }
	   	end
	   end
	end

	private
	def image_params
		params.require(:image).permit(:gallery)
	end
end
