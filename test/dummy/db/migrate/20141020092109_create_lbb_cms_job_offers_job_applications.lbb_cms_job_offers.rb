# This migration comes from lbb_cms_job_offers (originally 20141016083954)
class CreateLbbCmsJobOffersJobApplications < ActiveRecord::Migration
  def change
    create_table :lbb_cms_job_offers_job_applications do |t|
      t.references :job_offer, index: true
      t.has_attached_file :cv
      t.timestamps
    end

  end
end
