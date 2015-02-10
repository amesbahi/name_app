class NamesController < ApplicationController
	def index
		@names = Name.all
	end

	def new
	end

	def create
		@name = Name.new(name_params)

		@name.save
		redirect_to @name
	end

	def show
		@name = Name.find(params[:id])
	end

	private

	def name_params
		params.require(:name).permit(:name)
	end
end
