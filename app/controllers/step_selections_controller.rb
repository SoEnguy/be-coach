class StepSelectionsController < ApplicationController
  # GET /step_selections
  # GET /step_selections.json
  def index
    @step_selections = StepSelection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @step_selections }
    end
  end

  # GET /step_selections/1
  # GET /step_selections/1.json
  def show
    @step_selection = StepSelection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step_selection }
    end
  end

  # GET /step_selections/new
  # GET /step_selections/new.json
  def new
    @step_selection = StepSelection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step_selection }
    end
  end

  # GET /step_selections/1/edit
  def edit
    @step_selection = StepSelection.find(params[:id])
  end

  # POST /step_selections
  # POST /step_selections.json
  def create
    @step_selection = StepSelection.new(params[:step_selection])

    respond_to do |format|
      if @step_selection.save
        format.html { redirect_to @step_selection, notice: 'Step selection was successfully created.' }
        format.json { render json: @step_selection, status: :created, location: @step_selection }
      else
        format.html { render action: "new" }
        format.json { render json: @step_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /step_selections/1
  # PUT /step_selections/1.json
  def update
    @step_selection = StepSelection.find(params[:id])

    respond_to do |format|
      if @step_selection.update_attributes(params[:step_selection])
        format.html { redirect_to @step_selection, notice: 'Step selection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_selections/1
  # DELETE /step_selections/1.json
  def destroy
    @step_selection = StepSelection.find(params[:id])
    @step_selection.destroy

    respond_to do |format|
      format.html { redirect_to step_selections_url }
      format.json { head :no_content }
    end
  end
end
