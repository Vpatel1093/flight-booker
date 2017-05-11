# Create airport objects
codes = %w(SFO NYC ORD HND LHR LAX)
codes.each { |code| Airport.create(code: code) }


Flight.create!(from_airport_id: 1, to_airport_id: 2, departure: 2.days.ago, duration: 2)
Flight.create!(from_airport_id: 1, to_airport_id: 3, departure: 2.days.ago, duration: 3)
Flight.create!(from_airport_id: 2, to_airport_id: 3, departure: 2.days.ago, duration: 3)
Flight.create!(from_airport_id: 2, to_airport_id: 4, departure: 2.days.ago, duration: 2)
Flight.create!(from_airport_id: 3, to_airport_id: 4, departure: 2.days.ago, duration: 3)
Flight.create!(from_airport_id: 3, to_airport_id: 5, departure: 2.days.ago, duration: 2)
Flight.create!(from_airport_id: 4, to_airport_id: 5, departure: 3.days.ago, duration: 3)
Flight.create!(from_airport_id: 4, to_airport_id: 6, departure: 3.days.ago, duration: 2)
Flight.create!(from_airport_id: 5, to_airport_id: 6, departure: 3.days.ago, duration: 3)
Flight.create!(from_airport_id: 5, to_airport_id: 1, departure: 3.days.ago, duration: 2)
Flight.create!(from_airport_id: 6, to_airport_id: 1, departure: 3.days.ago, duration: 3)
Flight.create!(from_airport_id: 6, to_airport_id: 2, departure: 3.days.ago, duration: 2)
