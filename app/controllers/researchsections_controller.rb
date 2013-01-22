class ResearchsectionsController < ApplicationController
  # GET /researchsections
  # GET /researchsections.json
  def index
    @researchsections = Researchsection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @researchsections }
    end
  end

  # GET /researchsections/1
  # GET /researchsections/1.json
  def show
    @researchsection = Researchsection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @researchsection }
    end
  end

  # GET /researchsections/new
  # GET /researchsections/new.json
  def new
    @researchsection = Researchsection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @researchsection }
    end
  end

  # GET /researchsections/1/edit
  def edit
    @researchsection = Researchsection.find(params[:id])
  end

  # POST /researchsections
  # POST /researchsections.json
  def create
    @researchsection = Researchsection.new(params[:researchsection])

    respond_to do |format|
      if @researchsection.save
        format.html { redirect_to @researchsection, notice: 'Researchsection was successfully created.' }
        format.json { render json: @researchsection, status: :created, location: @researchsection }
      else
        format.html { render action: "new" }
        format.json { render json: @researchsection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /researchsections/1
  # PUT /researchsections/1.json
  def update
    @researchsection = Researchsection.find(params[:id])

    respond_to do |format|
      if @researchsection.update_attributes(params[:researchsection])
        format.html { redirect_to @researchsection, notice: 'Researchsection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @researchsection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /researchsections/1
  # DELETE /researchsections/1.json
  def destroy
    @researchsection = Researchsection.find(params[:id])
    @researchsection.destroy

    respond_to do |format|
      format.html { redirect_to researchsections_url }
      format.json { head :no_content }
    end
  end
end
