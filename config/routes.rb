Rails.application.routes.draw do
  resources :ads
  devise_for :users
  get 'welcome/index'
 resources :notes
authenticated :user do
	root 'ads#index', as: "authenticated_root"
end

root 'welcome#index'


end


