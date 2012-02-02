class ComplaintsController < ApplicationController
	before_filter :load_patient
	def create
		@investigation = @patient.investigations.new(params[:investigation])
		if @investigation.save
			redirect_to @patient, :notice => 'Thanks for your investigation'
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
	def load_patient
		@patient = patient.find(params[:patient_id])
	end
end
