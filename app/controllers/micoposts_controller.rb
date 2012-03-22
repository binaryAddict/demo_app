class MicopostsController < ApplicationController
  # GET /micoposts
  # GET /micoposts.json
  def index
    @micoposts = Micopost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micoposts }
    end
  end

  # GET /micoposts/1
  # GET /micoposts/1.json
  def show
    @micopost = Micopost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micopost }
    end
  end

  # GET /micoposts/new
  # GET /micoposts/new.json
  def new
    @micopost = Micopost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micopost }
    end
  end

  # GET /micoposts/1/edit
  def edit
    @micopost = Micopost.find(params[:id])
  end

  # POST /micoposts
  # POST /micoposts.json
  def create
    @micopost = Micopost.new(params[:micopost])

    respond_to do |format|
      if @micopost.save
        format.html { redirect_to @micopost, notice: 'Micopost was successfully created.' }
        format.json { render json: @micopost, status: :created, location: @micopost }
      else
        format.html { render action: "new" }
        format.json { render json: @micopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micoposts/1
  # PUT /micoposts/1.json
  def update
    @micopost = Micopost.find(params[:id])

    respond_to do |format|
      if @micopost.update_attributes(params[:micopost])
        format.html { redirect_to @micopost, notice: 'Micopost was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @micopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micoposts/1
  # DELETE /micoposts/1.json
  def destroy
    @micopost = Micopost.find(params[:id])
    @micopost.destroy

    respond_to do |format|
      format.html { redirect_to micoposts_url }
      format.json { head :ok }
    end
  end
end
