class User < Ohm::Model
  include Ohm::Timestamps
  include Shield::Model

  attribute :email
  attribute :crypted_password
  attribute :first_name
  attribute :last_name
  attribute :fb_access_token
  attribute :fb_id

  collection :members, :Member

  unique :email

  index :fb_id

  def self.fetch(email)
    with(:email, email)
  end

  def full_name
    [first_name, last_name].join(" ")
  end
end
