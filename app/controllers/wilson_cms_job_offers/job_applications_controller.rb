module WilsonCmsJobOffers
  class JobApplicationsController < EngineController



    def new
      @job_offer = JobOffer.friendly.find(params[:job_offer_id]) if params[:job_offer_id]
      new! { job_offers_path }
    end

    def create
      @job_offer = JobOffer.find( params[:job_application][:job_offer_id] ) if params[:job_application][:job_offer_id]
      @job_application = JobApplication.new( permitted_params[:job_application] )

      if @job_application.valid?
        @job_application.save
        redirect_to job_offers_path
        flash[:notice] = I18n.t('job_applications.create.success')
      else
        redirect_url = @job_offer.present?? job_offer_path(@job_offer) : job_offers_path
        flash[:error] = I18n.t('job_applications.create.error')
        redirect_to redirect_url
      end
    end

    private

    def permitted_params
      params.permit(job_application: [:job_offer_id, :cv, :name, :phone_number, :linkedin_profile, :email])
    end

  end
end
