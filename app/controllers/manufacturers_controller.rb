class ManufacturersController < ApplicationController

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      flash[:notice] = "Success"
      redirect_to manufacturers_path
    else
      flash[:notice] = "Error"
      render :new
  end

  private

  def manufacturer_params

  end
end