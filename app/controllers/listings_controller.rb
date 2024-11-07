class ListingsController < ApplicationController
  class ListingsController < ApplicationController
    def index
      @listings = Listing.all
      render json: @listings
    end

    def show
      @listing = Listing.find(params[:id])
      render json: @listing
    end

    def create
      @listing = Listing.new(listing_params)
      if @listing.save
        render json: @listing, status: :created
      else
        render json: @listing.errors, status: :unprocessable_entity
      end
    end

    def update
      @listing = Listing.find(params[:id])
      if @listing.update(listing_params)
        render json: @listing
      else
        render json: @listing.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @listing = Listing.find(params[:id])
      @listing.destroy
      head :no_content
    end

    private

    def listing_params
      params.require(:listing).permit(:num_rooms)
    end
  end
end
