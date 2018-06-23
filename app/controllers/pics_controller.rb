class PicsController < ApplicationController
	before_action :find_pic, only: [:show, :update, :destroy]

	def index
	end

	def show

	end


	def new
		@pic = Pic.new
	end

	def create
		@pic = Pic.new(pic_params)
		if @pic.save
			redirect_to @pic, notice: "Yesss! It was Posted!"
		else
			render 'new'
		end 
	end

	private

	def find_pic
		@pic = Pic.find(params[:id])
	end

	def pic_params
		params.require(:pic).permit(:title, :description)
	end
end
