module WilsonCmsJobOffers
  class Admin::JobApplicationsController < AdminController
    inherit_resources
    defaults route_prefix: 'admin', resource_class: JobApplication

    before_filter :set_job_application_filter, only: [:index, :show]

    private

    def set_job_application_filter
      @filter = WilsonCmsJobOffers::JobApplicationFilter.new(params['job_application_filter'] || {})
    end

  end
end
