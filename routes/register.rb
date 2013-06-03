module Routes
  class Register < Cuba
    define do
      on post, "login", param("user") do |dict|
        if login(User, dict["email"], dict["password"])
          res.redirect "/", 303
        else
          guest_render "index"
        end
      end

      on default do
        res.status = 404
        guest_render "404", title: "Not Found"
      end
    end
  end
end
