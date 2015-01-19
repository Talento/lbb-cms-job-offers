if defined? WilsonCms::AdminMenus
  WilsonCms::AdminMenus.menu_items << {
    key: :job_offers,
    url:  proc { WilsonCms::Engine.routes.url_helpers.admin_job_offers_path }
  }
end
