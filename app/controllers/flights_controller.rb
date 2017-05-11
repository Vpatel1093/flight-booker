class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params)
    @airports = Airport.all.pluck(:code, :id).sort.uniq
    @departures = Flight.departures
    @passengers = (1..4)
  end
end
