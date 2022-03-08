class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @new_food = Food.new
  end

  def create
    @new_food = Food.new(
      user: current_user,
      name: params[:food][:name],
      measurement_unit: params[:food][:measurement_unit],
      price: params[:food][:price]
    )

    if @new_food.save
      redirect_to foods_path, notice: 'Ingridiant successfully added'
    else
      render :new, alert: 'Error: Ingridiant could not be created'
    end
  end

  def destroy
    Food.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Ingridiant was successfully removed' }
    end
  end

  private

  def food_params
    params.required(:food).permit(:name, :measurement_unit, :price)
  end
end
