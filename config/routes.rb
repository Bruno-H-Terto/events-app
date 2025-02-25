Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :events, only: [ :index ] do
    collection do
      get "speakers"
      get "schedule_items"
      get "speaker_events"
    end
  end
  namespace :api do
    namespace :v1 do
      resources :schedule_items, only: [] do
        collection do
          get "teste"
        end
      end
      resources :events do
        resources :schedules, only: [ :index, :show ] do
          resources :schedule_items, only: [ :index, :show ], as: :items
        end
      end
    end
  end
end
