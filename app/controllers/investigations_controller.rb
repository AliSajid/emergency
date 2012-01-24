class InvestigationsController < ApplicationController
  # GET /investigations
  # GET /investigations.json
  def index
    @investigations = Investigation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @investigations }
    end
  end

  # GET /investigations/1
  # GET /investigations/1.json
  def show
    @investigation = Investigation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @investigation }
    end
  end

  # GET /investigations/new
  # GET /investigations/new.json
  def new
    @investigation = Investigation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @investigation }
    end
  end

  # GET /investigations/1/edit
  def edit
    @investigation = Investigation.find(params[:id])
  end

  # POST /investigations
  # POST /investigations.json
  def create
    @investigation = Investigation.new(params[:investigation])

    respond_to do |format|
      if @investigation.save
        format.html { redirect_to @investigation, notice: 'Investigation was successfully created.' }
        format.json { render json: @investigation, status: :created, location: @investigation }
      else
        format.html { render action: "new" }
        format.json { render json: @investigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /investigations/1
  # PUT /investigations/1.json
  def update
    @investigation = Investigation.find(params[:id])

    respond_to do |format|
      if @investigation.update_attributes(params[:investigation])
        format.html { redirect_to @investigation, notice: 'Investigation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @investigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigations/1
  # DELETE /investigations/1.json
  def destroy
    @investigation = Investigation.find(params[:id])
    @investigation.destroy

    respond_to do |format|
      format.html { redirect_to investigations_url }
      format.json { head :ok }
    end
  end
end
