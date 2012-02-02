class ComplaintsController < ApplicationController
	before_filter :load_patient
	def create
		@complaint = @patient.complaints.new(params[:complaint])
		if @complaint.save
			redirect_to @patient, :notice => 'Complaint Added!'
			else
			redirect_to @patient, :alert => 'Unable to add complaint!'
		end
	end

	def destroy
		@complaint = @patient.complaints.find(params[:id])
		@complaint.destroy
		redirect_to @patient, :notice => 'Complaint deleted!'
	end

private
	def load_patient
		@patient = Patient.find(params[:patient_id])
	end
end
