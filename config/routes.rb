WilsonCmsJobOffers::Engine.routes.draw do
  namespace :admin do
    resources :job_offers
  end

  localized do
    resources :job_offers, only: [:index, :show]     
    resources :job_applications, only: [:create]
  end

end
