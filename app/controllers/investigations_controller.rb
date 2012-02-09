class InvestigationsController < ApplicationController
	before_filter :load_patient

	def create
		@investigation = @patient.investigations.new(params[:investigation])
		if @investigation.save
			respond_to do |format|
				format.html {redirect_to @patient, :notice => 'Investigation Added!'}
				format.js
			end
			
			else
				respond_to do |format|
				format.html {redirect_to @patient, :alert => 'Unable to add investigation!'}
				format.js {render 'fail_create.js.erb'}
			end
		end
	end

	def destroy
		@investigation = @patient.investigations.find(params[:id])
		@investigation.destroy
		respond_to do |format|
			format.html { redirect_to @article, :notice => 'Comment deleted' }
			format.js
		end
	end

private
	def load_patient
		@patient = Patient.find(params[:patient_id])
	end

end
