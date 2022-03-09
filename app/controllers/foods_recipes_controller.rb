class FoodsRecipesController < ApplicationController
  def new
    @food_recipe = FoodRecipe.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @food = Food.find_by(id: params[:food_id])
    @new_food_recipe = FoodRecipe.new(
      food: @food,
      recipe: @recipe,
      quantity: params[:quantity]
    )

    if @new_food_recipe.save
      redirect_to recipe_path({ id: @recipe.id }), notice: 'Ingridient seccessfully added'
    else
      render :new, notice: 'Somethig went wrong'
    end
  end

  def destroy
    FoodRecipe.find_by(id: params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to recipe_path({ id: @recipe.id }), notice: 'Ingridient successfully removed' }
    end
  end
end
