class Admin::WagonsController < Admin::BaseController
  before_action :set_wagon, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:new, :create]

  def index
    @wagons = Wagon.all
  end

  def show
  end

  def new
    @wagon = Wagon.new
  end

  def edit
  end

  def create
    @wagon = @train.wagons.new(wagons_params)
    if @wagon.save
      redirect_to @train, notice: 'Wagon was successfully created.'
    else
      render :new
    end
  end

  def update
    if @wagon.update(wagons_params)
      redirect_to admin_wagon_path(@wagon), notice: 'Wagon was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @wagon.destroy
    redirect_to admin_wagons_url, notice: 'Wagon was successfully destroyed.'
  end

  private

  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  def set_train
    @train = Train.find(params[:train_id])
  end

  def wagons_params
    params.require(:wagon).permit(:type, :upper_berth, :lower_berths, :side_top_seats, :side_bottom_seats, :seat_places, :train_id)
  end
end
