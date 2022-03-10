class FoodsRecipesController < ApplicationController
  def new
    @food_recipe = FoodsRecipe.new
  end

  def create
    @new_food_recipe = FoodsRecipe.new(
      food_id: params[:food_id],
      recipe_id: params[:recipe_id],
      quantity: params[:quantity]
    )

    if @new_food_recipe.save
      redirect_to recipe_path({ id: params[:recipe_id] }), notice: 'Ingridient seccessfully added'
    else
      render :new, notice: 'Somethig went wrong'
    end
  end

  def destroy
    FoodsRecipe.find_by(id: params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to recipe_path({ id: params[:recipe_id] }), notice: 'Ingridient successfully removed' }
    end
  end
end
