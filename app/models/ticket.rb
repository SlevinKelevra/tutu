class Ticket < ApplicationRecord
  belongs_to :passenger
  belongs_to :train
  belongs_to :first_station, class_name: 'RailwayStation', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'RailwayStation', foreign_key: :last_station_id

  after_create :send_buy_notification
  after_destroy :send_cancel_notification

  def route_name
    "#{first_station.title} - #{last_station.title}"
  end

  private

  def send_buy_notification
    TicketsMailer.buy_ticket(self.passenger, self).deliver_now
  end

  def send_cancel_notification
    TicketsMailer.cancel_ticket(self.passenger, self).deliver_now
  end
end
