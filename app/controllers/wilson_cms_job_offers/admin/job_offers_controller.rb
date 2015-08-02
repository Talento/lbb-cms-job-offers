module WilsonCmsJobOffers
  class Admin::JobOffersController < AdminController
    inherit_resources
    defaults route_prefix: 'admin', resource_class: JobOffer

    before_filter :set_job_offer_filter, only: [:index, :new, :edit]

    def create
      create! { admin_job_offers_url }
    end

    def update
      update! { admin_job_offers_url }
    end

    def destroy
      destroy! { admin_job_offers_url }
    end

    private

    def permitted_params
      params.permit(job_offer: [:name, :description,
                                season_constrains_attributes: [:id, :starts_at, :ends_at]
                                ])
    end

    def set_job_offer_filter
      @filter = JobOfferFilter.new(params['job_offer_filter'] || {})
    end

  end
end
