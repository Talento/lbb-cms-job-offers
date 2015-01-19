module WilsonCmsJobOffers
  module AdminMenus
    include ActiveSupport::Configurable

    config_accessor :menu_items

    self.menu_items = [
      {
        key: :job_offers,
        url:  proc { WilsonCmsJobOffers::Engine.routes.url_helpers.admin_job_offers_path }
      }
    ]

  end
end
