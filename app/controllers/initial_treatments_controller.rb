class InitialTreatmentsController < ApplicationController
  # GET /initial_treatments
  # GET /initial_treatments.json
  def index
    @initial_treatments = InitialTreatment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @initial_treatments }
    end
  end

  # GET /initial_treatments/1
  # GET /initial_treatments/1.json
  def show
    @initial_treatment = InitialTreatment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @initial_treatment }
    end
  end

  # GET /initial_treatments/new
  # GET /initial_treatments/new.json
  def new
    @initial_treatment = InitialTreatment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @initial_treatment }
    end
  end

  # GET /initial_treatments/1/edit
  def edit
    @initial_treatment = InitialTreatment.find(params[:id])
  end

  # POST /initial_treatments
  # POST /initial_treatments.json
  def create
    @initial_treatment = InitialTreatment.new(params[:initial_treatment])

    respond_to do |format|
      if @initial_treatment.save
        format.html { redirect_to @initial_treatment, notice: 'Initial treatment was successfully created.' }
        format.json { render json: @initial_treatment, status: :created, location: @initial_treatment }
      else
        format.html { render action: "new" }
        format.json { render json: @initial_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /initial_treatments/1
  # PUT /initial_treatments/1.json
  def update
    @initial_treatment = InitialTreatment.find(params[:id])

    respond_to do |format|
      if @initial_treatment.update_attributes(params[:initial_treatment])
        format.html { redirect_to @initial_treatment, notice: 'Initial treatment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @initial_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /initial_treatments/1
  # DELETE /initial_treatments/1.json
  def destroy
    @initial_treatment = InitialTreatment.find(params[:id])
    @initial_treatment.destroy

    respond_to do |format|
      format.html { redirect_to initial_treatments_url }
      format.json { head :ok }
    end
  end
end
