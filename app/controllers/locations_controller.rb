class LocationsController < ApplicationController

    def index
      @locations = Location.all
    end

    def new
      @location = Location.new
      @company = Company.find(params[:company_id])
    end

    def create
      @location = Location.new(location_params)
      @location.company_id = params[:company_id]
      if @location.save
      redirect_to companies_path
        else
          render @location
      end
    end

    def show
      @location = Location.find(params[:id])
    end

    private
    def location_params
       params.require(:location).permit(:city, :street_name, :state, :zip_code, :country, :company_id)
    end
end
