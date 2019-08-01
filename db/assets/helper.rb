


def seed
  
  # PLANES = %w(Boeing Airbus Jet Learjet 23 Eclipse 500).map{|i| i.to_s}


  # plane_maker = -> name {Plane.create(name: name, num_of_seats: rand(100))}

  # flight_maker = -> place {Flight.create(duration: rand(10), origin: Faker::Address.state, destination: Faker::Address.state, plane: Plane.all.sample )}


  
  # 10.times do
  #   flight_maker.call('yeet')
  #   Ticket.create(flight: Flight.all.sample, passenger: Passenger.all.sample)
  # end


p1 = Passenger.create(name: "Tashawn")
p2 = Passenger.create(name: "Ali")
p3 = Passenger.create(name: "Ian")

pl1 = Plane.create(name: "Boeing 757", num_of_seats: 100)
pl2 = Plane.create(name: "Airbus", num_of_seats: 45)
pl3 = Plane.create(name: "Jet", num_of_seats: 25)
pl4 = Plane.create(name: "Learjet 23", num_of_seats: 20)
pl5 = Plane.create(name: "Eclipse 500", num_of_seats: 73)

f1 = Flight.create(duration: 1, origin: "Hartford", destination: "Montreal", plane_id: pl1.id)
f2 = Flight.create(duration: 3, origin: "New York", destination: "Chicago", plane_id: pl2.id)
f3 = Flight.create(duration: 2, origin: "Rome", destination: "Florence", plane_id: pl3.id)
f4 = Flight.create(duration: 6, origin: "Los Angeles", destination: "New York", plane_id:pl4.id)
f5 = Flight.create(duration: 8, origin: "New York", destination: "Los Angeles", plane_id: pl5.id)


t1 = Ticket.create(ticket_num: 1, passenger_id: p1.id, flight_id: f1.id)
t2 = Ticket.create(ticket_num: 2, passenger_id: p2.id, flight_id: f2.id)
t3 = Ticket.create(ticket_num: 3, passenger_id: p3.id, flight_id: f3.id)

end
