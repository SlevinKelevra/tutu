class TicketsController < ApplicationController
  before_action :authenticate_passenger!, only: [:create, :destroy]

  def index
    @tickets = current_passenger.tickets
  end

  def new
    @ticket = Ticket.new
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = current_passenger.tickets.new(ticket_params)
    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render :new
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    def destroy
      @ticket = Ticket.find(params[:id])
      @ticket.destroy
      respond_to do |format|
        format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      end
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:passenger_fio, :passport_number, :first_station_id, :last_station_id, :train_id)
  end
end
