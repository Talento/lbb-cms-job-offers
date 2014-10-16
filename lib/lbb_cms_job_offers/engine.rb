module LbbCmsJobOffers
  class Engine < ::Rails::Engine
    isolate_namespace LbbCmsJobOffers

    # Use minitest-spec by default
    config.generators do |g|
      g.test_framework :minitest, spec: true, fixture: false
    end

  end
end
