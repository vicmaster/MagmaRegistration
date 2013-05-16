MagmaRegistrations::Application.routes.draw do

  get "registrations/success"

  post "registrations/create"

  get "registrations/index"

  devise_for :users

  resources :systems

  resources :registrations

  resources :sizes

  resources :schools

  resources :carriers

  resources :attendees

  namespace :admin do
    resources :dashboard
  end

  match 'attendees-pdf' => 'pdfs#generate_pdf', :as => :attendees_pdf

  match 'admin/career' => 'carriers#index'
  match 'admin/attendees' => 'attendees#index'
  match 'admin/schools' => 'schools#index'
  
  scope 'admin' do
    resource :attendees
  end


  root :to => 'attendees#new'
end
