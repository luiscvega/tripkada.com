class Membership < Ohm::Model
  include Ohm::Timestamps

  reference :user, :User
  reference :group, :Group
end
