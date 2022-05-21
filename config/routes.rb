Rails.application.routes.draw do
  resources :contents
  root :to => "members#index"

  resources :members, only: %i[index show] do
    resource :notes, controller: 'members/notes', only: %i[new create]
  end

  resources :activities, only: %i[index]
end
