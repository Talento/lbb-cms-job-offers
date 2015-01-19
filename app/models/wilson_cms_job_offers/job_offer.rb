module WilsonCmsJobOffers
  class JobOffer < ActiveRecord::Base
    include Seasonable::ActsAsSeasonable
    extend FriendlyId
    include FriendlyGlobalize
    include HasSeoFields

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