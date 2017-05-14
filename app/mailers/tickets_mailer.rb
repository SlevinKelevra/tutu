class TicketsMailer < ApplicationMailer
  def buy_ticket(passenger,ticket)
    @user = passenger
    @ticket = ticket
    mail(to: passenger.email, subject: 'You buy a ticket')
  end

  def cancel_ticket(passenger,ticket)
    @user = passenger
    @ticket = ticket
    mail(to: passenger.email, subject: 'Your ticket is cancel')
  end
end
