class SchoolsController < ApplicationController
  # GET /schools
  # GET /schools.json
  # GET /schools.xml
  def index
    @schools = School.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schools }
      format.xml { render xml: @schools }
    end
  end

  # GET /schools/1
  # GET /schools/1.json
  # GET /schools/1.xml
  def show
    @school = School.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @school }
      format.xml { render xml: @school }
    end
  end

  # GET /schools/new
  # GET /schools/new.json
  # GET /schools/new.xml
  def new
    @school = School.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @school }
      format.xml { render xml: @school }
    end
  end

  # GET /schools/1/edit
  def edit
    @school = School.find(params[:id])
  end

  # POST /schools
  # POST /schools.json
  # POST /schools.xml
  def create
    @school = School.new(params[:school])

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render json: @school, status: :created, location: @school }
        format.xml { render xml: @school, status: :created, location: @school }
      else
        format.html { render action: "new" }
        format.json { render json: @school.errors, status: :unprocessable_entity }
        format.xml { render xml: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schools/1
  # PUT /schools/1.json
  # PUT /schools/1.xml
  def update
    @school = School.find(params[:id])

    respond_to do |format|
      if @school.update_attributes(params[:school])
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { head :no_content }
        format.xml { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @school.errors, status: :unprocessable_entity }
        format.xml { render xml: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  # DELETE /schools/1.xml
  def destroy
    @school = School.find(params[:id])
    @school.destroy

    respond_to do |format|
      format.html { redirect_to schools_url }
      format.json { head :no_content }
      format.xml { head :no_content }
    end
  end
end
