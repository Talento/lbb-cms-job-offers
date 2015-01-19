class CreateWilsonCmsJobOffersJobOffers < ActiveRecord::Migration
  def self.up
    create_table :wilson_cms_job_offers_job_offers do |t|
      t.string :name
      t.text :description
      t.string :slug, index: true
      t.timestamps
    end
    WilsonCmsJobOffers::JobOffer.create_translation_table! name: :string, description: :text, slug: :string
  end

  def self.down
    drop_table :wilson_cms_job_offers_job_offers
    WilsonCmsJobOffers::JobOffer.drop_translation_table!
  end
end
