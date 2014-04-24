class JobPosition < ActiveRecord::Base
	
	def self.search(params)
		title = params[:title]

		search = JobPosition.all

		if params[:current_job] == "Yes"
			search = search.current_job
		elsif params[:current_job] == "No"
			search = search.old_job
		end

		if title.present?
			search = search.where('title LIKE ?', "%#{title}%")
		end

		search
	end

end
