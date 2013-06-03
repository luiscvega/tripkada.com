class Group < Ohm::Model
  include Ohm::Timestamps

  attribute :name

  collection :memberships, :Membership
  collection :pins, :Pin

  def users
    memberships.map(&:user)
  end
end
