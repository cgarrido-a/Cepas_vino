Rails.application.routes.draw do
  devise_for :users
  resources :job_titles
  resources :magazines
  resources :oenologists
  resources :wine_strains
  resources :strains
  resources :wines

  root to: "wines#index"

end