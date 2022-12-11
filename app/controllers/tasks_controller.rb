# frozen_string_literal: true

class TasksController < ApplicationController
	def index
		@tasks = current_user.tasks
	end
end
