class Admin::TrainsController < Admin::BaseController
  before_action :set_train, only: [:show, :edit, :update, :destroy]

  # GET /trains
  # GET /trains.json
  def index
    @trains = Train.all
  end

  # GET /trains/1
  # GET /trains/1.json
  def show; end

  # GET /trains/new
  def new
    @train = Train.new
  end

  # GET /trains/1/edit
  def edit; end

  # POST /trains
  # POST /trains.json
  def create
    @train = Train.new(train_params)
    if @train.save
      redirect_to [:admin, @train], notice: 'Train was successfully created.'
    else
      render :new
    end
  end


  def update
    if @train.update(train_params)
      redirect_to admin_trains_url, notice: 'Train was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    redirect_to admin_trains_url, notice: 'Train was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train
      @train = Train.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_params
      params.require(:train).permit(:number, :route_id, :current_station_id, :sort_from_head)
    end
end
