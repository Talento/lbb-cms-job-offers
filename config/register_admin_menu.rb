WilsonCms::AdminMenus.menu_items << {
  key: :job_offers,
  url:  proc { WilsonCmsJobOffers::Engine.routes.url_helpers.admin_job_offers_path }
}
