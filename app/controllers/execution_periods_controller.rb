# frozen_string_literal: true

class ExecutionPeriodsController < ApplicationController
	def create
		task = Task.find(params[:task_id])
		task.execution_periods.create(start_time: Time.now)

    redirect_to root_path
	end

	def update
		execution_period = ExecutionPeriod.find(params[:id])
		time_now = Time.now
		duration = time_now - execution_period.start_time
		execution_period.update(end_time: time_now, duration: duration)
		
		redirect_to root_path
	end
end