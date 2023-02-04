# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to: "about#index", as: :about
  get "faq", to: "faq#index", as: :faq

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "create#new"


  root to: "main#index"
end
