class InvestigationsController < ApplicationController
	before_filter :load_patient
	
	def create
		@investigation = @patient.investigations.new(params[:investigation])
		if @investigation.save
			redirect_to @patient, :notice => 'Investigation added'
			else
			redirect_to @patient, :alert => 'Unable to add investigation'
		end
	end

	def destroy
		@investigation = @patient.investigations.find(params[:id])
		@investigation.destroy
		redirect_to @patient, :notice => 'investigation deleted'
	end

private
  def load_article
    @patient = Patient.find(params[:patient_id])
  end

end
