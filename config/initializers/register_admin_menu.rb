Rails.application.config.after_initialize do
  if defined? WilsonCms::AdminMenus
    WilsonCms::AdminMenus.resource_items << {
      key: :job_offers,
      model_name: 'WilsonCmsJobOffers::JobOffer',
      url:  proc { WilsonCmsJobOffers::Engine.routes.url_helpers.admin_job_offers_path }
    }
  end
end
