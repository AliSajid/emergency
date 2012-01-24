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
	
end
