require 'globalize'
require 'globalize-accessors'
require 'simple_form'
require 'inherited_resources'
require 'paperclip'
require 'kaminari'
require 'audited-activerecord'
require 'friendly_id'
require 'route_translator'
require 'ckeditor'

module LbbCmsJobOffers
  class Engine < ::Rails::Engine
    isolate_namespace LbbCmsJobOffers

    # Use minitest-spec by default
    config.generators do |g|
      g.test_framework :minitest, spec: true, fixture: false
    end

  end
end
