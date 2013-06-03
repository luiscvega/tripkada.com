class Group < Ohm::Model
  include Ohm::Timestamps

  attribute :name

  collection :members, :Member
  collection :pins, :Pin
end
