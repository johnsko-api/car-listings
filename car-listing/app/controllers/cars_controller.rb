class CarsController < ApplicationController


  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:notice] = "You've successfully submitted a car!"
      redirect_to cars_path
    else
      flash[:alert] = @car.errors.full_messages
      render "new"
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:make, :color, :year, :mileage, :description, :manufacturer_id)
  end


end
