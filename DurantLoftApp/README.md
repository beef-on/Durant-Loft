#Title: Durant Loft Application
#Team Members: Josh Asuncion, Brandon Fong, Emmett Ling, Joshua Yang
#Demo Link: https://www.youtube.com/watch?v=HjRlNPhKy8E&feature=youtu.be

#Idea: An application used to manage and help administrate a shared meeting space called Durant Loft, with specific features to manage manning, inventory, and to more easily schedule meetups with others.

#Models and Description:

User
- has first and last name, email, year (as an integer)
- booleans that indicate if a user is a manner or an admin
- can have many items, shifts, events

Shift
- has start date/time, end date/time, and three manners, which are all optional
- belongs to up to three users

Event
- has title, discription, time, drivers, riders
- boolean that indicates if an event needs rides
- has many users, and user has many events (many to many relationship)

Item
- has a name, category, and booleans indicated whether it is checkable, and if it can be permanently checked or not
- has a user if it is checked out by a user

#Features:

- users can sign up and log in
- users can check out and return items from inventory
- users who are manners can view shifts and sign up for shifts
- users who are manners or admin can view security codes
- users can create events to meet up
- users can be drivers or request rides for events

#Division of Labor:
- Josh Asuncion: front end, security
- Brandon Fong: Devise, shifts, seeds
- Emmett Ling: front end, inventory
- Joshua Yang: meetup (events), front end
