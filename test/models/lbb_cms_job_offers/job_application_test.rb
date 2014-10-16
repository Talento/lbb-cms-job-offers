require "test_helper"

module LbbCmsJobOffers
  describe JobApplication do
    let(:job_application) { JobApplication.new }

    it "must be valid" do
      job_application.must_be :valid?
    end
  end
end
