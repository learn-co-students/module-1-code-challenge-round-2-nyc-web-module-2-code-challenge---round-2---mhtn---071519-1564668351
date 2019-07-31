# MOD 1 ActiveRecord Code Challenge

To Start:
 - run `bundle install`
 - run `rake db:migrate`

## Deliverables

Congratulations! You've just been hired to work on a special project for JFK Airport. The previous developer began building an app that would keep track of flights, passengers, and planes. However, before they were able to finish, they quit to join Newark Airport. Your task is to review the existing code (including existing models and migrations) and do what's neccessary to make the app work.



*If you have properly completed the app you should be able to run `rake db:seed` without error. IF you run `rake db:seed` now it will give you an error. It is your job to create the establish the proper relationships and build the methods so that your app should be able to do the following:*

Build the following methods on the Flight class
  Flight#duration
    - return the flight's duration as an integer
  Flight#origin
    - return the flight's origin as a string
  Flight#destination
    - return the flight's destination as a string
  Flight#passengers  
    - has many `passengers`
    - return a collection of passengers instances associated with that flight

  Flight#plane
    - belongs to a `plane`
    - returns the instance of plane that is associated with that flight
    


  - should be able to see all of its `tickets`
  - should know all of its `passengers`
  - should know its `plane`
  - `Flight#total_passengers` should return the total number of passengers taking the flight


- Passenger
  - has a `name`
  - has many `flights`
  - should be able to see all of their `tickets`
  - should know all of their `flights`
  - should know all of their `planes`
  - `Passenger#total_flight_time` should return the total combined duration of all of their `flights`

- Plane
  - has a `name`
  - has a `num_of_seats`
  - has many `flights`
  - should know all of its `passengers`
  - `Plane#total_passengers` should return the total number of passengers for all of the plane's flights

  *When you have completed your app you will need to answer the questions below to help out any new developers joining your team:*

  Which tables have foreign keys?
    Answer Here:

  What happens when I call `Passenger#flights`?
    Answer Here:

  What gives us the ability to call the `Passenger#flights` method?    
    Answer Here:
