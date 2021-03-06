require 'byebug'

class Api::PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render "api/photos/index"
  end

  def show
    @photo = Photo.find(params[:id])
    render "api/photos/show"
  end

	def create
		@photo = Photo.new(photo_params)
		if @photo.save
			render "api/photos/show"
		else
			render json: @photo.errors.full_messages, status: 422
		end
	end

	private

	def photo_params
		params.require(:photo).permit(
      :url
    )
	end
end
