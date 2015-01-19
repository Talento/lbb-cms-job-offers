if defined? WilsonCms::AdminMenus
  WilsonCms::AdminMenus.menu_items << {
    key: :job_offers,
    model_name: 'WilsonCmsJobOffers::JobOffer',
    url:  proc { WilsonCmsJobOffers::Engine.routes.url_helpers.admin_job_offers_path }
  }
end
