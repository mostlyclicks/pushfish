class AnglersController < ApplicationController
  # GET /anglers
  # GET /anglers.json
  def index
    @anglers = Angler.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anglers }
    end
  end

  # GET /anglers/1
  # GET /anglers/1.json
  def show
    @angler = Angler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @angler }
    end
  end

  # GET /anglers/new
  # GET /anglers/new.json
  def new
    @angler = Angler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @angler }
    end
  end

  # GET /anglers/1/edit
  def edit
    @angler = Angler.find(params[:id])
  end

  # POST /anglers
  # POST /anglers.json
  def create
    @angler = Angler.new(params[:angler])

    respond_to do |format|
      if @angler.save
        format.html { redirect_to @angler, notice: 'Angler was successfully created.' }
        format.json { render json: @angler, status: :created, location: @angler }
      else
        format.html { render action: "new" }
        format.json { render json: @angler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anglers/1
  # PUT /anglers/1.json
  def update
    @angler = Angler.find(params[:id])

    respond_to do |format|
      if @angler.update_attributes(params[:angler])
        format.html { redirect_to @angler, notice: 'Angler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @angler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anglers/1
  # DELETE /anglers/1.json
  def destroy
    @angler = Angler.find(params[:id])
    @angler.destroy

    respond_to do |format|
      format.html { redirect_to anglers_url }
      format.json { head :no_content }
    end
  end
end
