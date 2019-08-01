# MOD 1 ActiveRecord Code Challenge

To Start:
 - run `bundle install`
 - run `rake db:migrate`
 - run `rake db:seed`

## Deliverables

Congratulations! You've just been hired to work on a special project for JFK Airport. The previous developer began building an app that would keep track of flights, passengers, and planes. However, before they were able to finish, they quit to join Newark Airport. Your task is to review the existing code (including existing models and migrations) and do what's neccessary to make the app work.


*Remember the app is currently not complete. It is your job to read the given code and make any necessary changes to establish the proper database, models, and relationships. A Flight belongs to a Plane, a Flight has many Passengers, and a Passenger has many Flights. If your app is complete it will be able to do the following deliverables*

Flight: 
- has a duration
- has a destination
- has an origin
- belongs to Plane
- has many Passengers

  `Flight#duration`
    - returns the flight's duration as an integer
    
  `Flight#origin`
    - returns the flight's origin as a string
    
  `Flight#destination`
    - returns the flight's destination as a string
    
  `Flight#passengers` 
    - returns an array of all the passenger instances that are associated with the the flight
    
  `Flight#plane`
    - returns the instance of the plane that is associated with the flight
    
  `Flight#tickets`
    - returns an array of all ticket instances associated with the flight
    
  `Flight#total_passengers`
    - returns the total sum of number of passengers associated with the flight as an integer

Passenger:
- has a name
- has many Flights 

  `Passenger#name`
    - returns the passenger's name as a string
    
  `Passenger#flights`
    - returns an array of all flight instances associated with the passenger
    
  `Passenger#tickets`
    - returns an array of all ticket instances associated with the passenger
    
  `Passenger#planes`
    - returns an array of all plane instances associated with the passenger
    
  `Passenger#total_flight_time`
    - returns the total sum of the duration for each flight associated with the passenger as an integer 

Plane:
- has a name 
- has a num_of_seats
- has many flights

  `Plane#name`
    - returns the planes's name as a string
    
  `Plane#num_of_seats`
    - returns the plane's num_of_seats as an integer
    
  `Plane#flights`
    - returns an array of all flight instances associated with the plane
    
  `Plane#passengers`
    - returns an array of all passenger instances associated with the plane
    
  `Plane#total_passengers`
    - returns the total sum of number of passengers associated with this plane as an integer 

  *When you have completed your app you will need to answer the questions below to help out any new developers joining your team. Please write a short response answering in your own words*

## Complete the questions below: 

  Which tables have foreign keys?
  
    Answer Here: The <flights> table will have a foreign key of a plane id. And the JOIN table <tickets> will have foreign key attributes of 2 connecting tables - <flights> table and <passengers> table.

  What gives us the ability to call the `Passenger#flights` method? 
  
    Answer Here: ActiveRecord provides the ability to call this method through relationships/assosiations that we established for our models. ActiveRecord is a Ruby gem, that provieds the binding and interface between tables in a relational database and the Ruby program code to manipulate the database objects.

  When would you need a join table?
  
    Answer Here: The JOIN table is needed when we have one Ruby object instance that can relate to one ore more instances of the second object, and in return our second object can relate to one or more instances of the first object. This is called "many-to-many" relationship and the way we establish this connection is by adding the macros of has_many/has_many, through to our parent tables and belongs_to (both parent tables) to our JOIN model. The JOIN table provides the connection between two parent tables to hold both their instances. 

  What is the join table in this application?
  
    Answer Here: The JOIN table in this application is <tickets>, it provides the connection between our <flights> table and <passengers> table. 