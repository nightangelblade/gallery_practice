class ImagesController < ApplicationController

	def index
		@images = Image.all
	end

	def show
		@image = Image.find(params[:id])
	end

	def new
		@image = Image.new
	end

	def create
		@image = Image.new(image_params)
		p image_params
		if @image.save
			redirect_to image_path(@image)
		else
			render new_image_path
		end
	end

	private
	def image_params
		params.require(:image).permit(:name, :image)
	end

end