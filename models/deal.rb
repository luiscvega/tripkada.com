class Deal < Ohm::Model
  include Ohm::DataTypes
  include Ohm::Timestamps

  attribute :name
  attribute :pax
  attribute :photo
  attribute :duration
  attribute :description
  attribute :cost, Type::Decimal

  collection :pins, :Pin
end
