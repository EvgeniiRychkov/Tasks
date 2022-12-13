# frozen_string_literal: true

class TasksController < ApplicationController
	before_action :set_task, only: %i[edit update destroy]

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

	def edit; end

	def update
		@task.update(task_params)

		redirect_to root_path
	end

	def destroy
		@task.delete

		redirect_to root_path
	end

	private

	def task_params
    params.require(:task).permit(:name)
  end

  def set_task
  	@task = Task.find(params[:id])
  end
end
