module Routes
  class Pins < Cuba
    define do
      group = Group[vars[:group_id]]

      on ":id" do |id|
        break unless pin = group.pins[id]

        user_render "pins/show", pin: Pin[id]
      end

      on post, param("pin") do |dict|
        pin = Pin.create(dict)

        res.redirect "/groups/%s" % pin.group.id
      end
    end
  end
end
