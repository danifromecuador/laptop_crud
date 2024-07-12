class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
  end

  def show
    @laptop = Laptop.find(params[:id])
  end

  def new
    @laptop = Laptop.new
  end

  def create
    @laptop = Laptop.new(laptop_params)

    if @laptop.save
      redirect_to "/laptops"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def laptop_params
    params.require(:laptop).permit(:lbrand, :lmodel)
  end
end