class Project < ApplicationRecord
	has_many :time_entries

	def self.clean_old

		# @project_cleaner = self.where('created_at: < ?', 1.week.ago)
		# @project_cleaner.destroy_all

		Project.where('created_at: < ?', 1.week.ago).destroy_all
		
	end
	
end
