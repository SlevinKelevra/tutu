class WagonsController < ApplicationController
  before_action :set_wagon, only: [:show, :edit, :update, :destroy]

  def index
    @wagons = Wagon.all
  end

  def show; end

  def new
    @wagon = Wagon.new
  end

  def create
    train = Train.find(params[:wagon][:number_train])
    @wagon = train.wagons.new(wagon_params)

    if @wagon.save
      redirect_to @wagon
    else
      render :new
    end
  end

  def edit; end

  def update

    if @wagon.update(wagon_params)
      redirect_to @wagon
    else
      render :new
    end
  end

  def destroy
    @wagon.destroy
    redirect_to wagons_path
  end

  private

  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  def wagon_params
    params.require(:wagon).permit(:wagon_type, :lower_berths, :upper_berth)
  end
end
