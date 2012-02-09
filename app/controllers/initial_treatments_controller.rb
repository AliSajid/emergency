class InitialTreatmentsController < ApplicationController
	before_filter :load_patient
	def create
		@treatment = @patient.initial_treatments.new(params[:initial_treatment])
		if @treatment.save
			respond_to do |format|
				format.html {redirect_to @patient, :notice => 'Treatment Added!'}
				format.js
			end
			
			else
				respond_to do |format|
				format.html {redirect_to @patient, :alert => 'Unable to add treatment!'}
				format.js {render 'fail_create.js.erb'}
			end
		end
	end

	def destroy
		@treatment = @patient.initial_treatments.find(params[:id])
		@treatment.destroy
		redirect_to @patient, :notice => 'Treatment deleted!'
	end

private
	def load_patient
		@patient = Patient.find(params[:patient_id])
	end
end
