class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render :new
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:passenger_fio, :passport_number, :first_station_id, :last_station_id, :train_id)
  end
end
