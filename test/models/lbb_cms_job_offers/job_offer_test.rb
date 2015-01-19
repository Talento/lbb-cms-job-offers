require "test_helper"

module WilsonCmsJobOffers
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
    
    describe "#seo tags " do
      let(:job_offer){FactoryGirl.create(:job_offer)}
      
      it "must have no seo tags when created" do
        job_offer.seo_tag.must_be_nil
      end
      
      describe "with seo tag attributes" do
        before(:each) do
          @attrs = {name: 'test-name', description: 'test-description',
                    seo_tag_attributes: {seo_meta_description: 'seo-meta-description',
                                         seo_meta_keywords: 'seo-meta-keywords',
                                         seo_robot: 'seo-robot',
                                         seo_title: 'seo-title',
                                         seo_canonical: 'seo-canonical',
                                         og_image: 'og-image'}}
        end
        
        it "must have seo tag with attributes specified" do
          job_offer = WilsonCmsJobOffers::JobOffer.create(@attrs)
          job_offer.seo_tag.wont_be_nil
        end
      end
    end
  end
end
