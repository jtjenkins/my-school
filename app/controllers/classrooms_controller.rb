class ClassroomsController < ApplicationController
  # GET /classrooms
  # GET /classrooms.json
  # GET /classrooms.xml
  def index
    @classrooms = Classroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @classrooms }
      format.xml { render xml: @classrooms }
    end
  end

  # GET /classrooms/1
  # GET /classrooms/1.json
  # GET /classrooms/1.xml
  def show
    @classroom = Classroom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classroom }
      format.xml { render xml: @classroom }
    end
  end

  # GET /classrooms/new
  # GET /classrooms/new.json
  # GET /classrooms/new.xml
  def new
    @classroom = Classroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @classroom }
      format.xml { render xml: @classroom }
    end
  end

  # GET /classrooms/1/edit
  def edit
    @classroom = Classroom.find(params[:id])
  end

  # POST /classrooms
  # POST /classrooms.json
  # POST /classrooms.xml
  def create
    @classroom = Classroom.new(params[:classroom])

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to @classroom, notice: 'Classroom was successfully created.' }
        format.json { render json: @classroom, status: :created, location: @classroom }
        format.xml { render xml: @classroom, status: :created, location: @classroom }
      else
        format.html { render action: "new" }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
        format.xml { render xml: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /classrooms/1
  # PUT /classrooms/1.json
  # PUT /classrooms/1.xml
  def update
    @classroom = Classroom.find(params[:id])

    respond_to do |format|
      if @classroom.update_attributes(params[:classroom])
        format.html { redirect_to @classroom, notice: 'Classroom was successfully updated.' }
        format.json { head :no_content }
        format.xml { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
        format.xml { render xml: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classrooms/1
  # DELETE /classrooms/1.json
  # DELETE /classrooms/1.xml
  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy

    respond_to do |format|
      format.html { redirect_to classrooms_url }
      format.json { head :no_content }
      format.xml { head :no_content }
    end
  end
end
