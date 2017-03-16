class PostsController < ApplicationController

	def index
		@recipes = Recipe.all.order(created_at: :desc)
	end

	def show
	end

	def gout
		@recipes = Recipe.gout
		render action: :gout
	end

	def hypertension
	end

	def diabetes
		@recipes = Recipe.diabetes
		render action: :diabetes
	end

	def weight
	end
end