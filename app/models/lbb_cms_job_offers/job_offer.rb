module LbbCmsJobOffers
  class JobOffer < ActiveRecord::Base
    include LbbCms::Seasonable
    include LbbCms::FriendlyGlobalize
    extend FriendlyId

    validates :name, :description, presence: true

    translates :name, :description, :slug
    friendly_id :name, use: [:slugged, :globalize]

    has_many :job_applications

    accepts_nested_attributes_for :job_applications

    private
    def should_generate_new_friendly_id?
      slug.blank? || name_changed?
    end
  end
end
