class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def confirm
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
