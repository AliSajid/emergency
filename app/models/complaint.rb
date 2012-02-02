class Complaint < ActiveRecord::Base
	validates :complaint, :presence => true
	belongs_to :patient
	
end
