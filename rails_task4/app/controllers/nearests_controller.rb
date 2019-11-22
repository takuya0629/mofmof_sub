class NearestsController < ApplicationController
  before_action :set_nearest, only: [:show, :edit, :update, :destroy]

  # GET /nearests
  # GET /nearests.json
  def index
    @nearests = Nearest.all
  end

  # GET /nearests/1
  # GET /nearests/1.json
  def show
  end

  # GET /nearests/new
  def new
    @nearest = Nearest.new
  end

  # GET /nearests/1/edit
  def edit
  end

  # POST /nearests
  # POST /nearests.json
  def create
    @nearest = Nearest.new(nearest_params)

    respond_to do |format|
      if @nearest.save
        format.html { redirect_to @nearest, notice: 'Nearest was successfully created.' }
        format.json { render :show, status: :created, location: @nearest }
      else
        format.html { render :new }
        format.json { render json: @nearest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nearests/1
  # PATCH/PUT /nearests/1.json
  def update
    respond_to do |format|
      if @nearest.update(nearest_params)
        format.html { redirect_to @nearest, notice: 'Nearest was successfully updated.' }
        format.json { render :show, status: :ok, location: @nearest }
      else
        format.html { render :edit }
        format.json { render json: @nearest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nearests/1
  # DELETE /nearests/1.json
  def destroy
    @nearest.destroy
    respond_to do |format|
      format.html { redirect_to nearests_url, notice: 'Nearest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nearest
      @nearest = Nearest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nearest_params
      params.require(:nearest).permit(:route_name, :station, :time)
    end
end
