
puts "Create seed data"
Airplane.destroy_all
a1 = Airplane.create :name => '747', :rows => 20 , :columns => 5

a2 = Airplane.create :name => '380', :rows => 60, :columns => 7

a3 = Airplane.create :name => '737', :rows => 30, :columns => 6

a4 = Airplane.create :name => '777', :rows => 25, :columns => 5

a5 = Airplane.create :name => '380', :rows => 30, :columns => 6

a6 = Airplane.create :name => '787', :rows => 40, :columns => 5
puts "Airplanes data success"

User.destroy_all
u1 = User.create :first_name => 'Freddie', :last_name => 'Butcher', :email => 'freddiebutcher@gmail.com', :isadmin => 'true', :password => 'chicken'
u2 = User.create :first_name => 'Ratsamee', :last_name => 'Kajornchaiyakul', :email => 'meekaj@gmail.com', :isadmin => 'false', :password => 'chicken'
u3 = User.create :first_name => 'Harrison', :last_name => 'Malouf', :email => 'harrisonmalouf@gmail.com', :isadmin => 'false', :password => 'chicken'
u4 = User.create :first_name => 'Sienna', :last_name => 'Miller', :email => 'siennamiller@gmail.com', :isadmin => 'false', :password => 'chicken'
u5 = User.create :first_name => 'Bradley', :last_name => 'Pittance', :email => 'bradpitt@gmail.com', :isadmin => 'false', :password => 'chicken'
u6 = User.create :first_name => 'admin', :last_name => 'ga', :email => 'admin@ga.co', :isadmin => 'true', :password => 'chicken'
puts "Users data success"

Flight.destroy_all
f1 = Flight.create :flight_number => 'QF456', :origin => 'SYD', :destination => 'MEL', :departure_date => '2019-12-01', :airplane_id => a1.id

f2 = Flight.create :flight_number => 'EK456', :origin => 'BKK', :destination => 'SYD', :departure_date => '2019-10-21', :airplane_id => a2.id

f3 = Flight.create :flight_number => 'EK457', :origin => 'DUB', :destination => 'SFO', :departure_date => '2019-09-21', :airplane_id => a2.id

f4 = Flight.create :flight_number => 'FF37', :origin => 'SYD', :destination => 'BHH', :departure_date => '2019-08-13', :airplane_id => a3.id

f5 = Flight.create :flight_number => 'TH457', :origin => 'DAB', :destination => 'BHH', :departure_date => '2019-08-13', :airplane_id => a3.id

f6 = Flight.create :flight_number => 'TH457', :origin => 'DAB', :destination => 'MEL', :departure_date => '2019-08-14', :airplane_id => a3.id

f7 = Flight.create :flight_number => 'TH457', :origin => 'DAB', :destination => 'MEL', :departure_date => '2019-08-11', :airplane_id => a3.id

f8 = Flight.create :flight_number => 'TH457', :origin => 'DAB', :destination => 'MEL', :departure_date => '2019-08-12', :airplane_id => a3.id

f9 = Flight.create :flight_number => 'TH457', :origin => 'DAB', :destination => 'MEL', :departure_date => '2019-08-15', :airplane_id => a3.id

f10 = Flight.create :flight_number => 'TH457', :origin => 'DAB', :destination => 'MEL', :departure_date => '2019-08-16', :airplane_id => a3.id



Reservation.destroy_all
r1 = Reservation.create :flight_id => f1.id, :reservation_date => '2019-08-02', :user_id => u1.id, :seat_number => '3A'

r2 = Reservation.create :flight_id => f2.id, :reservation_date => '2019-08-22', :user_id => u1.id, :seat_number => '32C'

r3 = Reservation.create :flight_id => f3.id, :reservation_date => '2019-09-30', :user_id => u2.id, :seat_number => '55F'

r4 = Reservation.create :flight_id => f4.id, :reservation_date => '2019-07-30', :user_id => u4.id, :seat_number => '26A'
puts "Reservation data success"
