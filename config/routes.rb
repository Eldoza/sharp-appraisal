Rails.application.routes.draw do

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/gallery'
  get 'static_pages/home_owners'
  get 'static_pages/lenders'
  get 'static_pages/attorneys'
  get 'static_pages/real_estate_agents'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
