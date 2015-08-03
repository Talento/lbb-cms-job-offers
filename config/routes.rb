WilsonCmsJobOffers::Engine.routes.draw do
  namespace :admin do
    resources :job_offers
    resources :job_applications, only: [:index, :show]   
  end

  localized do
    resources :job_offers, only: [:index, :show]
    resources :job_applications, only: [:create]
  end

end
