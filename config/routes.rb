LbbCmsJobOffers::Engine.routes.draw do

  resources :job_offers, only: [:index, :show] do
    resources :job_applications, only: [:new, :create]
  end


end
