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
            group = Group[id]
            featured_deals = Deal.find(pax: group.users.count)

            user_render "groups/dashboard", group: Group[id], featured_deals: featured_deals
          end
        end
      end
    end
  end
end
