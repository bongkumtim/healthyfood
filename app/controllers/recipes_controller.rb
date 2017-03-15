class RecipesController < ApplicationController
	before_action :require_login, except: [:show, :index]
	before_action :find, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

	def index
		@recipes = Recipe.all.order(created_at: :desc)	
	end

	def gout
		@recipes =  Recipe.gout
		render action: :index
	end

	def diabetes
		@recipes =  Recipe.diabetes
		render action: :index
	end

	def weight
		@recipes =  Recipe.weight
		render action: :index
	end

	def hypertension
		@recipes =  Recipe.hypertension
		render action: :index
	end

	def show
		@comments = Comment.where(recipe_id: @recipe)
	end

	def new
		@recipe = current_user.recipes.build
	end

	def create
		@recipe = current_user.recipes.build(recipe_params)
		
		if @recipe.save
			redirect_to @recipe
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			render 'edit'
		end
	end

	def destroy
		@recipe.destroy
		redirect_to root_path
	end

	def upvote
		@recipe.upvote_by current_user
		redirect_to :back
	end

	def downvote
		@recipe.downvote_by current_user
		redirect_to :back
	end

	private

	def recipe_params
	params.require(:recipe).permit(:title, :cook_time, :nutrition, :description, :recipe, :direction, :image, :tag, :price)
	end

	def find
	@recipe = Recipe.find(params[:id])
	end


end
