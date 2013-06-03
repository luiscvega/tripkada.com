module Routes
  class Groups < Cuba
    define  do
      on ":id" do |id|
        break unless current_user.groups.include?(Group[id])

        with group_id: id do

          on "pins" do
            run Routes::Pins
          end

          on root do
            user_render "groups/dashboard", group: Group[id]
          end
        end
      end
    end
  end
end
