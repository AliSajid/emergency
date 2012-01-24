class Patient < ActiveRecord::Base
	validates :fname, :presence => true
	validates :lname, :presence => true
	
	has_many :complaints
	has_many :investigations
	has_many :initial_treatments
	
	
	def name
		"#{fname} #{lname}"
	end
	
end
