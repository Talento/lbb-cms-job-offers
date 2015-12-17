module WilsonCmsJobOffers
  class JobApplication < ActiveRecord::Base
    has_attached_file :cv
    belongs_to :job_offer

    validates_attachment_file_name :cv, :matches => [/doc\Z/, /docx\Z/, /pages\Z/, /pdf\Z/, /odt\Z/, /ods\Z/, /odp\Z/]

    validates :cv, :name, :email,  presence: true

    scope :with_name, ->(name){where("name like '%#{name}%' or email like '%#{name}%'")}

  end
end