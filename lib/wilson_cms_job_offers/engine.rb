require 'globalize'
require 'globalize-accessors'
require 'simple_form'
require 'nested_form'
require 'inherited_resources'
require 'paperclip'
require 'audited-activerecord'
require 'friendly_id'
require 'friendly_id/globalize'
require 'route_translator'
require 'friendly_globalize'
require 'jquery-rails'
require 'ckeditor'
require 'rails-i18n'

module WilsonCmsJobOffers
  class Engine < ::Rails::Engine
    isolate_namespace WilsonCmsJobOffers

    # Use minitest-spec by default
    config.generators do |g|
      g.test_framework :minitest, spec: true, fixture: false
    end
  end
end
