json.extract! flight, :id, :flight_number, :origin, :destination, :departure_date, :airplane_id, :created_at, :updated_at
json.airplane do 
    json.extract! flight.airplane, :name, :rows, :columns
end
json.reservations do
    json.array! flight.reservations, :reservation_date, :seat_number, :user_id
    # json.user do
    #     json.extract! flight.reservation.user, :first_name
    # end
end

json.url flight_url(flight, format: :json)