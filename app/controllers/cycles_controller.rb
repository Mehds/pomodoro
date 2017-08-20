class CyclesController < ApplicationController

	def create 
		@task = Task.find(params[:task_id])

		@cycle = @task.cycles.create(params[:duration])

		redirect_to task_path(@task)
	end
end
