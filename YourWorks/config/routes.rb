Rails.application.routes.draw do
	root 'roots#top'
  devise_for :users

  namespace :admins do
  	devise_for :admins
  end

  namespace :delivers do
  	get '/delivers' => 'roots#top'
  	devise_for :delivers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
