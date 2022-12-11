# frozen_string_literal: true

class TasksController < ApplicationController
	def index
		@tasks = current_user.tasks
	end

	def new
		@task = current_user.tasks.new
	end

	def create
		current_user.tasks.create(task_params)

    redirect_to root_path
	end

	private

	def task_params
    params.require(:task).permit(:name)
  end
end
