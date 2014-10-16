require "test_helper"

module LbbCmsJobOffers
  describe JobOffer do
    let(:job_offer) { JobOffer.new }

    it "must be valid" do
      job_offer.must_be :valid?
    end
  end
end
