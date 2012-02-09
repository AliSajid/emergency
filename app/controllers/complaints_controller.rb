class ComplaintsController < ApplicationController
	before_filter :load_patient
	def create
		@complaint = @patient.complaints.new(params[:complaint])
		if @complaint.save
			respond_to do |format|
				format.html {redirect_to @patient, :notice => 'Complaint Added!'}
				format.js
			end
			
			else
				respond_to do |format|
				format.html {redirect_to @patient, :alert => 'Unable to add complaint!'}
				format.js {render 'fail_create.js.erb'}
			end
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
