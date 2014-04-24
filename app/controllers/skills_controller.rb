class SkillsController < ApplicationController

	def index
		@skills = Skill.all
	end

	def new
		@new_skill = Skill.new
	end

	def create
		@skill = Skill.new(skill_params)
		if @skill.save
			redirect_to skill_path(@skill)
		else
			redirect_to new_skill_path
		end
	end

	def show
		@skill = Skill.find(params[:id])
	end

	def edit
		@skill = Skill.find(params[:id])
	end

	private

	def skill_params
		params.require(:skill).permit(:name, :description)
	end

end
