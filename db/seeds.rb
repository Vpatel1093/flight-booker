# Create airport objects
codes = %w(SFO NYC ORD HND LHR LAX)
codes.each { |code| Airport.create(code: code) }
time_2_days_ago = Date.today - 2.days
time_3_days_ago = Date.today - 3.days

Flight.create!(from_airport_id: 1, to_airport_id: 2, departure: time_2_days_ago, duration: 2)
Flight.create!(from_airport_id: 1, to_airport_id: 3, departure: time_2_days_ago, duration: 3)
Flight.create!(from_airport_id: 2, to_airport_id: 3, departure: time_2_days_ago, duration: 3)
Flight.create!(from_airport_id: 2, to_airport_id: 4, departure: time_2_days_ago, duration: 2)
Flight.create!(from_airport_id: 3, to_airport_id: 4, departure: time_2_days_ago, duration: 3)
Flight.create!(from_airport_id: 3, to_airport_id: 5, departure: time_2_days_ago, duration: 2)
Flight.create!(from_airport_id: 4, to_airport_id: 5, departure: time_3_days_ago, duration: 3)
Flight.create!(from_airport_id: 4, to_airport_id: 6, departure: time_3_days_ago, duration: 2)
Flight.create!(from_airport_id: 5, to_airport_id: 6, departure: time_3_days_ago, duration: 3)
Flight.create!(from_airport_id: 5, to_airport_id: 1, departure: time_3_days_ago, duration: 2)
Flight.create!(from_airport_id: 6, to_airport_id: 1, departure: time_3_days_ago, duration: 3)
Flight.create!(from_airport_id: 6, to_airport_id: 2, departure: time_3_days_ago, duration: 2)
