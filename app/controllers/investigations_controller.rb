class InvestigationsController < ApplicationController
	before_filter :load_patient
=======
	def create
		@investigation = @patient.investigations.new(params[:investigation])
		if @investigation.save
			redirect_to @patient, :notice => 'Investigation added!'
			else
			redirect_to @patient, :alert => 'Unable to add investigation!'
>>>>>>> views2:app/controllers/investigations_controller.rb
		end
	end

	def destroy
		@investigation = @patient.investigations.find(params[:id])
		@investigation.destroy

=======
		redirect_to @patient, :notice => 'Investigation deleted!'
	end

private
	def load_patient
		@patient = Patient.find(params[:patient_id])
	end
>>>>>>> views2:app/controllers/investigations_controller.rb
end
