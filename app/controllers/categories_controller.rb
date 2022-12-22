# frozen_string_literal: true

class CategoriesController < ApplicationController
	def index
		@categories = current_user.categories
	end

	def new
		@category = current_user.categories.new
	end

	def create
		current_user.categories.create(category_params)

    redirect_to root_path
	end

	private

	def category_params
		params.require(:category).permit(:name)
	end
end