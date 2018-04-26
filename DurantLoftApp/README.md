#Title: Durant Loft Application
#Team Members: Josh Asuncion, Brandon Fong, Emmett Ling, Joshua Yang
#Demo Link: n/a

#Idea: An application used to manage and help administrate a shared meeting space called Durant Loft, with specific features to manage manning, inventory, and to more easily schedule meetups with others.

#Models and Description:

User
- has first and last name, email, year (as an integer).
- booleans that indicate if a user is a manner or an admin.
- can have many items, shifts, events

Shift
- has start date/time, end date/time, and three manners, which are all optional.
- belongs to up to three users.

Event
- DESCRIBE EVENT MODEL HERE---------------------------------------------------------------

Item
- has a name, category, and booleans indicated whether it is checkable, and if it can be permanently checked or not.
- has a user if it is checked out by a user.

#Features:

- users can sign up and log in
- users can check out and return items from inventory
- users who are manners can view shifts and sign up for shifts.
- DESCRIBE MEET UP HERE---------------------------------------------------------------

#Division of Labor:
- Josh: front end, security
- Brandon: Devise, shifts, seeds
- Emmett: front end, inventory
- Joshua: meetup, front end
