# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to:"about#index", as: :about
  get "faq", to:"faq#index", as: :faq


  root to:"main#index"
end
