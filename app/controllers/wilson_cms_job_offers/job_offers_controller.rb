module WilsonCmsJobOffers

  class JobOffersController < EngineController

    inherit_resources
    defaults resource_class: WilsonCmsJobOffers::JobOffer.friendly

    def show
      show! do
        resource.job_applications.build
      end
    end

    private

    def permitted_params
      params.permit(job_offer: [job_applications_attributes: [:job_offer_id, :cv]])
    end

    def collection
      get_collection_ivar || set_collection_ivar(end_of_association_chain.visible_today.with_translations(I18n.locale))
    end

  end


end
