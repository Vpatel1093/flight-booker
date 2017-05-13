class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport,   class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def self.departures
    self.select("departure").distinct.map{ |flight| [flight.departure.strftime("%m/%d/%Y"),flight.departure]}
  end

  def self.search(params)
    if params[:from].blank? && params[:to].blank? && params[:date].blank? && params[:passengers].blank?
      flights = []
    else
      flights = Flight.all
      flights = flights.where(from_airport_id: params[:from]) if params[:from].present?
      flights = flights.where(to_airport_id:   params[:to]) if params[:to].present?
      flights = flights.where(departure:       params[:date].to_datetime) if params[:date].present?
      flights = nil if flights == []
    end
    flights
  end
end
