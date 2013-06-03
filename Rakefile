task :seed do
  require_relative "app"

  Ohm.flush

  user = User.create(first_name: "Luis", last_name: "Vega", email: "luis@gmail.com", password: "pass1234")
  group = Group.create(name: "Dahoodz")
  Membership.create(user: user, group: group)

  Deal.create(
    name: "Palawan Escape", pax: 4, duration: 3, cost: 10000, photo: "palawan1",
    description:
      "Travel to one of the most famous beaches here in the Philippines,
      enjoy the Underground River with your friends and just have a great time!"
  )

  Deal.create(
    name: "Boracay Labor Day", pax: 8, duration: 5, cost: 15000, photo: "boracay1",
    description:
      "Travel to one of the most famous beaches here in the Philippines,
      enjoy the Underground River with your friends and just have a great time!"
  )
end
