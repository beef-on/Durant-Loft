# Durant Loft Application

DL App is a management application for the rooms and resources of Durant Loft, a shared meeting space located along Durant Avenue in Berkeley.  This app is designed to serve as the one-stop shop for reservations, inventory, security manning schedule, and all things DL!


Feature: Inventory

A database of items at Durant Loft. This would include several categories of items, including audio/visual equipment, board games, books, lost & found, and cleaning / event supplies. Users can log in and check out items, and when they do, their name will be listed in the database, so they can be contacted if a specific item needs to be found / checked out by another user. For books and cleaning / event supplies, authorized users who are in charge of inventory can log in to check if new supplies need to be ordered. The database will somehow automatically notify said users if any specific item is getting low. 

Models: Item, User
Feature: Security Manning Schedule
A database holding hour long time slots from Monday to Friday, 10AM - 12AM. Each time slot will have two manners represented by Manner models. A Manner will contain a name, email, year, and phone number. Only seniors can sign up for opening and closing shifts, and only sophomores and juniors can sign up for the rest of the slots. This may also include a form for a User to sign up for a Manner account, which will create a Manner for that User. A User that is a senior and a Manner, or a User that is a staff, will be able to access a place where all the access codes are kept.  Because the models contain sensitive information, access to the page will be restricted to manners and staff.  

Models: Security Manner, Shift.
Gems: Devise
Feature: Room Reservation
A way to submit requests for and display events for specific rooms in Durant Loft. The form will enable a User to submit a request to reserve a room or multiple rooms for a time frame. A User authorized for approving scheduling requests will be able to see all pending requests, and either approve or deny them.  

Models: User
Gems: Simple Calendar
Feature: Meet Up
An easy way for members to post events and organize rides. This will include a form which will ask the user input information for an event which will then be transferred to a database that can output general event details in a hub like Facebook.  There could be specific categories such as rides(drivers and people who need rides), food, volunteers, etc. There could be an option to post this on to facebook, gmail, etc. to friends in order to promote various activities. Note: This doesn’t have to include just big events, it could include matches such as ping pong, soccer, etc. If possible, there could be sort of like a matchmaking form that could put people online to play a sport, game, etc. based on what he/she wants.
Models: User, Event
GEMS: logstash-event, live_record, filter_matcher, cancancan
Relationships
User HAS MANY Item 
Item BELONGS TO User
User HAS MANY Events
Event HAS MANY Users
User HAS MANY Shifts
Shift HAS ONE User IF Manner [X 2]
Models
User
Boolean Name
String Email
String Phone Number
Boolean Manner
Boolean Admin



Shift
Int: Start Time
Int: End Time
User: Manner 1
User: Manner 2
User: Backup

Event

Item

