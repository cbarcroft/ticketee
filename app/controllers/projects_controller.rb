class ProjectsController < ApplicationController
	def index
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project]) #<co id="ch03_551_1" />
		if @project.save
			redirect_to @project,
			:notice => "Project has been created."
		else
			flash[:alert] = "Project has not been created."
			render :action => "new"
		end
	end

	def show
		@project = Project.find(params[:id])
	end
end
