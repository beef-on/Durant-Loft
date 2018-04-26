# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Make Users
[['Brandon', 'Fong', true, true], ['Emmett', 'Ling', false, false], ['Josh', 'Asuncion', true, false]].each do |first, last, manner, admin|
  User.create(
    firstName: first,
    lastName: last,
    email: first + "@berkeley.edu",
    password: "password",
    password_confirmation: "password",
    manner: manner,
    admin: admin,
    voted: nil
  )
end

# Make Shifts
(10..23).each do |start|
  (23..27).each do |date|
  	@startDate = DateTime.new(2018, 4, date, start)
  	@endDate = DateTime.new(2018, 4, date, start + 1)
  	Shift.create(
  		start: @startDate,
  		end: @endDate
  	)
  end
end

[['Mac Charger', 'Lost And Found', false, false], ['Avalon', 'Books/Games', true, true], ['Ben\'s Acoustic Guitar', 'Audio/Visual', false, false], ['ESV Study Bible', 'Books/Games', true, false]].each do |called, category, check, temp|
  Item.create(
    checkable: check,
    name: called,
    temporary: temp,
    category: category
  )
end
