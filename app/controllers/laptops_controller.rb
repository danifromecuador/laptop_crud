class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
  end

  def show
    @laptop = Laptop.find(params[:id])
  end
end