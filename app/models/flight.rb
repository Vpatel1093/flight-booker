class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport,   class_name: "Airport"

  def self.departures
    pluck(:departure).map { |departure| departure.strftime("#%d/%m/%Y") }.sort.uniq
  end

  def self.search(params)
    self.where(from_airport_id: params[:from],
               to_airport_id:   params[:to],
               departure:       params[:departure])
  end
end
