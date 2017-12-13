Plane.destroy_all

p1 = Plane.create :name => "El Guerrero", :rows => 5, :cols => 4
p2 = Plane.create :name => "La Melaza", :rows => 10, :cols => 3


Flight.destroy_all

f1 = Flight.create :number => "B100", :origin => "Sydney", :destination => "Lima", :date => '2017/12/24'
f2 = Flight.create :number => "B200", :origin => "Lima", :destination => "New York", :date => '2017/12/25'
f3 = Flight.create :number => "B300", :origin => "Lima", :destination => "New York", :date => '2017/12/24'
f4 = Flight.create :number => "B400", :origin => "New York", :destination => "Sydney", :date => '2017/12/25'


User.destroy_all

u1 = User.create :name => "Jose", :password => "chicken"
u2 = User.create :name => "Maddi", :password => "chicken"
u3 = User.create :name => "Craigsy", :password => "chicken"

Reservation.destroy_all

r1 = Reservation.create :seat => "A1"
r2 = Reservation.create :seat => "B2"
r3 = Reservation.create :seat => "C3"
r4 = Reservation.create :seat => "A4"


p1.flights << f1 << f2
p2.flights << f3 << f4

f1.reservations << r1
f2.reservations << r2
f3.reservations << r3
f4.reservations << r4

u1.reservations << r1 << r2
u2.reservations << r3 << r4
