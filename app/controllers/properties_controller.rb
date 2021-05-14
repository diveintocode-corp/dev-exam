class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times {@property.transportations.build}
  end

  def create
    @property = Property.new(property_params)
      if @property.save
        redirect_to properties_path, notice: "物件情報を作成しました！"
      else
        render :new 
      end
  end

  def edit
    @property.transportations.build
  end

  def show
    @transportations = @property.transportations
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "物件情報を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "物件情報を削除しました！"
  end

  private  
  def property_params
    params.require(:property).permit(:property_name, :rent, :address, :building_age, :note, transportations_attributes: [:line_name, :station_name, :walking_distance])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
