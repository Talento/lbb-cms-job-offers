class CreateWilsonCmsJobOffersJobApplications < ActiveRecord::Migration
  def change
    create_table :wilson_cms_job_offers_job_applications do |t|
      t.references :job_offer, index: true
      t.attachment :cv
      t.string :name
      t.string :phone_number
      t.string :linkedin_profile
      t.string :email
      t.timestamps
    end
  end
end
