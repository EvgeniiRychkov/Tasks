# frozen_string_literal: true

class ExecutionPeriodsController < ApplicationController
	def create
		task = Task.find(params[:task_id])
		task.execution_periods.create

    redirect_to root_path
	end

	def update
		execution_period = ExecutionPeriod.find(params[:id])
		execution_period.update(end_time: DateTime.now)
		
		redirect_to root_path
	end
end