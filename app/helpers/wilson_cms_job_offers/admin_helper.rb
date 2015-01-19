module WilsonCmsJobOffers
  module AdminHelper
    def active_menu_class menu
      'active' if controller_name == menu.to_s
    end
  end

end
