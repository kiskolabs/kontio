class ForwardingsController < ApplicationController
  # GET /forwardings
  # GET /forwardings.json
  def index
    @forwardings = Forwarding.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forwardings }
    end
  end

  # GET /forwardings/1
  # GET /forwardings/1.json
  def show
    @forwarding = Forwarding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forwarding }
    end
  end

  # GET /forwardings/new
  # GET /forwardings/new.json
  def new
    @forwarding = Forwarding.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forwarding }
    end
  end

  # GET /forwardings/1/edit
  def edit
    @forwarding = Forwarding.find(params[:id])
  end

  # POST /forwardings
  # POST /forwardings.json
  def create
    @forwarding = Forwarding.new(params[:forwarding])

    respond_to do |format|
      if @forwarding.save
        format.html { redirect_to @forwarding, notice: 'Forwarding was successfully created.' }
        format.json { render json: @forwarding, status: :created, location: @forwarding }
      else
        format.html { render action: "new" }
        format.json { render json: @forwarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forwardings/1
  # PUT /forwardings/1.json
  def update
    @forwarding = Forwarding.find(params[:id])

    respond_to do |format|
      if @forwarding.update_attributes(params[:forwarding])
        format.html { redirect_to @forwarding, notice: 'Forwarding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @forwarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forwardings/1
  # DELETE /forwardings/1.json
  def destroy
    @forwarding = Forwarding.find(params[:id])
    @forwarding.destroy

    respond_to do |format|
      format.html { redirect_to forwardings_url }
      format.json { head :no_content }
    end
  end
end
