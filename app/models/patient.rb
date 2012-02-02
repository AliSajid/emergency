class Patient < ActiveRecord::Base
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	
	has_many :complaints
	has_many :investigations
	has_many :initial_treatments
	
	
	def name
		"#{first_name} #{last_name}"
	end
	
	def gender
		if gender_boolean
			"Female"
			else
				"Male"
			end
	end
	
	def mlc
		if mlc_status
			"MLC case"
		else
			"Non-MLC case"
		end
		
	end
	
	def time
		created_at.in_time_zone("Karachi").strftime("%r %Z")
	end
	
	def date
		created_at.strftime("%d/%m/%Y")
	end
end
