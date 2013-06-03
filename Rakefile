task :seed do
  require_relative "app"

  Ohm.flush

  user = User.create(first_name: "Luis", last_name: "Vega", email: "luis@gmail.com", password: "pass1234")
  group = Group.create(name: "Dahoodz")

  Membership.create(user: user, group: group)
end
