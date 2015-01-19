module WilsonCmsJobOffers
  class Admin::JobOffersController < AdminController
    inherit_resources
    defaults route_prefix: 'admin', resource_class: JobOffer.friendly

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
      params.permit(job_offer: [:name_es, :description_es, :name_en, :description_en,
                                season_constrains_attributes: [:id, 'starts_at(3i)', 'starts_at(2i)', 'starts_at(1i)',
                                                               'ends_at(3i)', 'ends_at(2i)', 'ends_at(1i)']])
    end

  end
end