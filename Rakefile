task :seed do
  require_relative "app"

  Ohm.flush

  luis = User.create(first_name: "Luis", last_name: "Vega", email: "luis@gmail.com", password: "pass1234")
  macky = User.create(first_name: "Macky", last_name: "Tamayo", email: "macky@gmail.com", password: "pass1234")
  jaq = User.create(first_name: "Jaq", last_name: "Uy", email: "jaq@gmail.com", password: "pass1234")
  maureen = User.create(first_name: "Maureen", last_name: "Padilla", email: "maureen@gmail.com", password: "pass1234")

  group = Group.create(name: "Dahoodz")
  Membership.create(user: luis, group: group)
  Membership.create(user: macky, group: group)
  Membership.create(user: jaq, group: group)
  Membership.create(user: maureen, group: group)

  group = Group.create(name: "Bukeki")
  Membership.create(user: luis, group: group)

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

  Deal.create(
    name: "Chocolate Bohol", pax: 4, duration: 4, cost: 20000, photo: "bohol1",
    description:
      "Travel to one of the most famous beaches here in the Philippines,
      enjoy the Underground River with your friends and just have a great time!"
  )

  Deal.create(
    name: "Majestic Davao", pax: 3, duration: 4, cost: 20000, photo: "davao1",
    description:
      "Travel to one of the most famous beaches here in the Philippines,
      enjoy the Underground River with your friends and just have a great time!"
  )

  Deal.create(
    name: "Palaui Chill", pax: 4, duration: 4, cost: 30000, photo: "palaui1",
    description:
      "Travel to one of the most famous beaches here in the Philippines,
      enjoy the Underground River with your friends and just have a great time!"
  )
end
