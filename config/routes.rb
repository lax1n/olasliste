Rails.application.routes.draw do
  devise_for :users
  #constraints lambda { |request| request.env["warden"].authenticate? and request.env['warden'].user.admin? } do
  #  mount Sidekiq::Web, at: '/sidekiq', as: :sidekiq
  #end

  #devise_for :user, controllers: {
  #    registrations: "registrations",
  #    omniauth_callbacks: "users/omniauth_callbacks"
  #}

  root 'posts#index'

  resources :posts
end
