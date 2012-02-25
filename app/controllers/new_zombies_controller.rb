class NewZombiesController < ApplicationController
  # GET /new_zombies
  # GET /new_zombies.json
  def index
    @new_zombies = NewZombie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_zombies }
    end
  end

  # GET /new_zombies/1
  # GET /new_zombies/1.json
  def show
    @new_zombie = NewZombie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_zombie }
    end
  end

  # GET /new_zombies/new
  # GET /new_zombies/new.json
  def new
    @new_zombie = NewZombie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_zombie }
    end
  end

  # GET /new_zombies/1/edit
  def edit
    @new_zombie = NewZombie.find(params[:id])
  end

  # POST /new_zombies
  # POST /new_zombies.json
  def create
    @new_zombie = NewZombie.new(params[:new_zombie])

    respond_to do |format|
      if @new_zombie.save
        format.html { redirect_to @new_zombie, notice: 'New zombie was successfully created.' }
        format.json { render json: @new_zombie, status: :created, location: @new_zombie }
      else
        format.html { render action: "new" }
        format.json { render json: @new_zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_zombies/1
  # PUT /new_zombies/1.json
  def update
    @new_zombie = NewZombie.find(params[:id])

    respond_to do |format|
      if @new_zombie.update_attributes(params[:new_zombie])
        format.html { redirect_to @new_zombie, notice: 'New zombie was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_zombies/1
  # DELETE /new_zombies/1.json
  def destroy
    @new_zombie = NewZombie.find(params[:id])
    @new_zombie.destroy

    respond_to do |format|
      format.html { redirect_to new_zombies_url }
      format.json { head :ok }
    end
  end
end
