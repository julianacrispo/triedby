Rails.application.routes.draw do

	resources :products
  
  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
