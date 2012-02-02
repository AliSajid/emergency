class InitialTreatment < ActiveRecord::Base
	validates :treatment, :presence => true
	belongs_to :patient
	
end
