module Api
	module V1
		class ListsController < ApplicationController

			respond_to :json

			def index
				respond_with List.all
			end

			def show
				respond_with List.find(params[:id])
			end

			def create
				respond_with List.new(params[:list])
			end

			def update
				respond_with List.find(params[:id], params[:list])
			end

			def destroy
				respond_with List.find(params[:id])
			end
		end
	end
end
