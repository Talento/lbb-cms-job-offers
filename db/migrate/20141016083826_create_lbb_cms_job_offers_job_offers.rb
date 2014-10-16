class CreateLbbCmsJobOffersJobOffers < ActiveRecord::Migration
  def self.up
    create_table :lbb_cms_job_offers_job_offers do |t|
      t.string :name
      t.text :description
      t.string :slug, index: true
      t.timestamps
    end
    LbbCmsJobOffers::JobOffer.create_translation_table! name: :string, description: :text, slug: :string
  end

  def self.down
    drop_table :lbb_cms_job_offers_job_offers
    LbbCmsJobOffers::JobOffer.drop_translation_table!
  end
end
