module WilsonCmsJobOffers
  class JobApplicationsController < EngineController

    inherit_resources

    def new
      @job_offer = JobOffer.friendly.find params[:job_offer_id]
      new! { job_offers_path }
    end

    def create
      create! { job_offers_path  }
    end

    private

    def permitted_params
      params.permit(job_application: [:job_offer_id, :cv])
    end

  end
end
