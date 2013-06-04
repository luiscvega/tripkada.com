class Deal < Ohm::Model
  include Ohm::DataTypes
  include Ohm::Timestamps

  attribute :name
  attribute :pax
  attribute :photo
  attribute :duration, Type::Integer
  attribute :description
  attribute :cost, Type::Decimal

  collection :pins, :Pin

  index :pax

  def formatted_duration
    "%s Days %s Nights" % [duration, duration - 1]
  end
end
