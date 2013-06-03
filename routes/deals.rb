module Routes
  class Deals < Cuba
    define do
      on ":id" do |id|
        user_render "deals/show", deal: Deal[id]
      end

      on root do
        user_render "deals/index", deals: Deal.all
      end
    end
  end
end
