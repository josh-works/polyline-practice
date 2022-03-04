class ActorAnthologiesController < ApplicationController
  before_action :set_actor_anthology, only: %i[ show edit update destroy ]

  # GET /actor_anthologies or /actor_anthologies.json
  def index
    @actor_anthologies = ActorAnthology.all
  end

  # GET /actor_anthologies/1 or /actor_anthologies/1.json
  def show
  end

  # GET /actor_anthologies/new
  def new
    @actor_anthology = ActorAnthology.new
  end

  # GET /actor_anthologies/1/edit
  def edit
  end

  # POST /actor_anthologies or /actor_anthologies.json
  def create
    @actor_anthology = ActorAnthology.new(actor_anthology_params)

    respond_to do |format|
      if @actor_anthology.save
        format.html { redirect_to actor_anthology_url(@actor_anthology), notice: "Actor anthology was successfully created." }
        format.json { render :show, status: :created, location: @actor_anthology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actor_anthology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_anthologies/1 or /actor_anthologies/1.json
  def update
    respond_to do |format|
      if @actor_anthology.update(actor_anthology_params)
        format.html { redirect_to actor_anthology_url(@actor_anthology), notice: "Actor anthology was successfully updated." }
        format.json { render :show, status: :ok, location: @actor_anthology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actor_anthology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_anthologies/1 or /actor_anthologies/1.json
  def destroy
    @actor_anthology.destroy

    respond_to do |format|
      format.html { redirect_to actor_anthologies_url, notice: "Actor anthology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_anthology
      @actor_anthology = ActorAnthology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actor_anthology_params
      params.require(:actor_anthology).permit(:name, :picture_url)
    end
end
