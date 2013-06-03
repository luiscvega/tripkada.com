class Group < Ohm::Model
  include Ohm::Timestamps

  attribute :name

  collection :memberships, :Membership
  collection :pins, :Pin

  def deals
    pins.map(&:deal)
  end

  def users
    memberships.map(&:user)
  end
end
