class JobPositionsController < ApplicationController
	
	def index
		@job_positions = JobPosition.all
	end

	def filter
		@job_positions = JobPosition.search(params[:filter])
		render :index
	end

	def new
		@new_position = JobPosition.new
	end

	def create
		@new_position = JobPosition.new(job_position_params)

		if @new_position.save
			redirect_to job_positions_path #"/job_positions"
		end
	end

	def show
		@job_position = JobPosition.find(params[:id])
	end

	def edit
		@position = JobPosition.find(params[:id])
	end

	def update
		@position = JobPosition.find(params[:id])
		if @position.update_attributes(job_position_params)
			redirect_to job_position_path(@position)
		end
	end

	def destroy
		@position = JobPosition.find(params[:id])
		if @position.destroy
			redirect_to job_positions_path
		else
			redirect_to job_position_path(@position)
		end
	end

	private

	def job_position_params
		params.require(:job_position).permit!
	end



end
