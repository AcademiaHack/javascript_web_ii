Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'people#index'

  resources :people, shallow: true do
    resources :hobbies
  end
end
