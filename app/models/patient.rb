class Patient < ActiveRecord::Base
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	
	has_many :complaints
	has_many :investigations
	has_many :initial_treatments
	
	
	def name
		"#{first_name} #{last_name}"
	end
	
end
