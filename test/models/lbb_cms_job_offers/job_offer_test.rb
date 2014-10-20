require "test_helper"

module LbbCmsJobOffers
  describe JobOffer do
    describe "#fields " do
      let(:job_offer) { JobOffer.new }

      it "must be invalid with no name and description" do
        job_offer.wont_be :valid?
      end
    
      it "must be invalid with no name" do
        job_offer.description = 'description'
        job_offer.wont_be :valid?
      end
    
      it "must be invalid with no desciption" do
        job_offer.name = 'name'
        job_offer.wont_be :valid?
      end
    
      it "must respond to job_applications" do
        job_offer.must_respond_to :job_applications
      end
    
    end
  
    describe "#job applications " do
      before(:each) do
        @attrs = {name: 'test-name', description: 'test-description'}
      end

      it "must be empty for new job offer" do
        job_offer = JobOffer.create(@attrs)
        job_offer.job_applications.must_be :empty?
      end

      it "must have one application after adding it" do
        job_offer = JobOffer.create(@attrs)
        job_offer.job_applications << JobApplication.create(job_offer_id: job_offer.id)
        job_offer.job_applications.count.must_equal 1
      end

      it "must have two applications after adding them" do
        job_offer = JobOffer.create(@attrs)
        job_offer.job_applications << JobApplication.create(job_offer_id: job_offer.id)
        job_offer.job_applications << JobApplication.create(job_offer_id: job_offer.id)
        job_offer.job_applications.count.must_equal 2
      end
    end
    
  end
end
