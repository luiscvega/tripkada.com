module Routes
  class Pins < Cuba
    define do
      on post, param("pin") do |dict|
        pin = Pin.create(dict)

        res.redirect "/groups/%s" % pin.group.id
      end
    end
  end
end
