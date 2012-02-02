class Investigation < ActiveRecord::Base
	validates :investigation, :presence => true
	belongs_to :patient
	
end
