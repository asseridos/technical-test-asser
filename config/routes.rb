Rails.application.routes.draw do
  
  resources :tags
  root :to => "members#index"

  resources :members, only: %i[index show] do
    resource :notes, controller: 'members/notes', only: %i[new create]
    resource :contents, controller: 'members/contents', only: %i[new create edit update]
  end

  resources :activities, only: %i[index]
end
