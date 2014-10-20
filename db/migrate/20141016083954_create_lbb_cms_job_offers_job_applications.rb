class CreateLbbCmsJobOffersJobApplications < ActiveRecord::Migration
  def change
    create_table :lbb_cms_job_offers_job_applications do |t|
      t.references :job_offer, index: true
      t.attachment :cv
      t.timestamps
    end

  end
end
