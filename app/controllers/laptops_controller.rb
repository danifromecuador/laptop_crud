class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all.sort
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

  def edit
    @laptop = Laptop.find(params[:id])
  end

  def update
    @laptop = Laptop.find(params[:id])
    if @laptop.update(laptop_params)
      redirect_to "/laptops"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @laptop = Laptop.find(params[:id])
    @laptop.destroy
    redirect_to "/laptops"
  end

  private

  def laptop_params
    params.require(:laptop).permit(:lbrand, :lmodel)
  end
end
