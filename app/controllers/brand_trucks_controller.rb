class BrandTrucksController < ApplicationController
  def index
  end

  def new
  end

  def create

    @car = BrandTruck.new(allowed_params)
    if BrandTruck.save
      redirect_to cars_path
    else
      render 'new'
    end


  end

  def edit
  end

  def update
  end

  def destroy
  end
end
