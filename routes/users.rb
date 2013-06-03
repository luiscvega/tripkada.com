module Routes
  class Users < Cuba
    define do
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
