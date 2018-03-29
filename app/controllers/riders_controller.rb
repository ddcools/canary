class RidersController < ApplicationController
  before_action :set_rider, only: [:show, :edit, :update, :destroy]

  def index
    @riders = Rider.all
    @rider = Rider.new
  end


  def show
  end

 
  def new
    @rider = Rider.new
  end

 
  def edit
  end

 
  def create
    @rider = Rider.new(rider_params)

    respond_to do |format|
      if @rider.save
        format.html { redirect_to @rider, notice: 'Rider was successfully created.' }
        format.json { render :show, status: :created, location: @rider }
      else
        @error_on_register = true
        format.html { render :index }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @rider.update(rider_params)
        format.html { redirect_to @rider, notice: 'Rider was successfully updated.' }
        format.json { render :show, status: :ok, location: @rider }
      else
        format.html { render :edit }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @rider.destroy
    respond_to do |format|
      format.html { redirect_to riders_url, notice: 'Rider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rider
      @rider = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rider_params
      params.require(:rider).permit(:email, :password, :password_confirmation, :name, :city, :bike, :age)
    end
end
