class PassengerMailer < ApplicationMailer
  def thank_you(passenger)
    @passenger = passenger
    @booking = @passenger.bookings.last
    mail(to: @passenger.email, subject: 'Your flight has been booked!')
  end
end
