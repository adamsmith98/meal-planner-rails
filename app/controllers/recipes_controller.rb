class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Current.user.recipes.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

   if @recipe.update(recipe_params)
      redirect_to @recipe
   else
      render :edit, status: :unprocessable_entity
   end
  end

  def destroy
    @recipe = Recipe.find(params[:id])

    @recipe.destroy
    redirect_to recipes_path
  end

  private
  def recipe_params
    params.expect(recipe: [ :name, :instructions, :prep_time, :cooking_time, :serves, :is_gluten_free, :is_dairy_free, :is_vegetarian, :is_vegan,
      recipe_ingredients_attributes: [ [ :_destroy, :quantity, :unit, :name, :notes, :id ] ] ])
  end
end
