require "cuba"
require "mote"
require "cuba/contrib"
require "rack/protection"
require "shield"

Cuba.plugin Cuba::Mote
Cuba.plugin Cuba::TextHelpers
Cuba.plugin Shield::Helpers

# Require all application files.
Dir["./models/**/*.rb"].each  { |rb| require rb }
Dir["./routes/**/*.rb"].each  { |rb| require rb }

# Require all helper files.
Dir["./helpers/**/*.rb"].each { |rb| require rb }
Dir["./filters/**/*.rb"].each { |rb| require rb }

Cuba.use Rack::MethodOverride
Cuba.use Rack::Session::Cookie,
  key: "checkout.ph",
  secret: "8aa0a37e4342310afdedd3a7407c6ee5fceb5d0b"

Cuba.use Rack::Protection
Cuba.use Rack::Protection::RemoteReferrer

Cuba.use Rack::Static,
  urls: %w[/js /css /img],
  root: "./public"

Cuba.define do
  persist_session!

  on "products/:id" do |id|
    on "step1" do
      render("products/form/step1")
    end

    on "step2" do
      render("products/form/step2")
    end

    on "step3" do
      render("products/form/step3")
    end
  end
end
