class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
      if @property.save
        redirect_to properties_path
      else
        render :new 
      end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

# Private
  def property_params
    params.require(:property).permit(:property_name, :rent, :address, :building_age, :note)
  end
end
