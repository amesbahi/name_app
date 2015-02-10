class NamesController < ApplicationController
	def new
	end

	def create
		render plain: params[:name].inspect
	end
end
