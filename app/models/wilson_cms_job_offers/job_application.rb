module WilsonCmsJobOffers
  class JobApplication < ActiveRecord::Base
    has_attached_file :cv
    belongs_to :job_offer

    validates_attachment :cv, content_type: { content_type: ["application/pdf", "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }
  end
end
