class ManufacturersController < ApplicationController


def index
  @manufacturers = Manufacturer.all
end

def new
  @manufacturer = Manufacturer.new
end

def show
  @manufacturer = Manufacturer.find(params[:id])
end

def create
  @manufacturer = Manufacturer.new(manufacturer_params)

  if @manufacturer.save
    flash[:notice] = "You've successfully submitted a manufacturer!"
    redirect_to root_path
  else
    flash[:alert] = @manufacturer.errors.full_messages
    render "new"
  end
end


private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end


end
