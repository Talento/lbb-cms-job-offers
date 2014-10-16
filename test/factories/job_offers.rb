# require 'factory_girl'
#
# FactoryGirl.define do
#   job_offer_name = "#{Faker::Name.name} offer"
#   job_offer_description = Faker::Lorem.paragraph 5
#
#   factory :job_offer do
#     name job_offer_name
#     description job_offer_description
#   end
#
#   factory :job_offer_with_application, class: JobOffer do
#     name job_offer_name
#     description job_offer_description
#     factory :job_applications do
#       after(:create) do |job_offer|
#         job_offer.job_applications << JobApplication.create(job_offer_id: job_offer.id)
#       end
#     end
#   end
# end
