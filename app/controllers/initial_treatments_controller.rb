class InitialTreatmentsController < ApplicationController
 before_filter :load_patient
	
	def create
		@treatment = @patient.treatments.new(params[:treatment])
		if @treatment.save
			redirect_to @patient, :notice => 'Treatment added'
			else
			redirect_to @patient, :alert => 'Unable to add treatment'
		end
	end

	def destroy
		@treatment = @patient.treatments.find(params[:id])
		@treatment.destroy
		redirect_to @patient, :notice => 'treatment deleted'
	end

private
  def load_article
    @patient = Patient.find(params[:patient_id])
  end 
end
