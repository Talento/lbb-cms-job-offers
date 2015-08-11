module WilsonCmsJobOffers
  class JobApplication < ActiveRecord::Base
    has_attached_file :cv
    belongs_to :job_offer

    validates_attachment :cv, content_type: { content_type: ["application/pdf", "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }

    validates :cv, :name, presence: true

    scope :with_name, ->(name){where("name like '%#{name}%' or email like '%#{name}%'")}

  end
end
