class CafesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(cafe_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_cafe
  end

  def cafe_params
    params.require(:name, :description)
  end
end
