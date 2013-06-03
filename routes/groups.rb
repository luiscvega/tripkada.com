module Routes
  class Groups < Cuba
    define  do
      on ":id" do |id|
        user_render "groups/dashboard", group: Group[id]
      end
    end
  end
end
