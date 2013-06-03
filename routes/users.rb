module Routes
  class Users < Cuba
    define do
      on "groups" do
        run Routes::Groups
      end

      on "deals" do
        run Routes::Deals
      end

      on "pins" do
        run Routes::Pins
      end

      on "logout" do
        logout(User)
        res.redirect "/"
      end

      on root do
        user_render "users/dashboard"
      end
    end
  end
end
