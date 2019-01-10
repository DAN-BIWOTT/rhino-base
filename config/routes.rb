Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  devise_scope :user do get "/auth/logout" => "devise/sessions#destroy" end
  
resources :teachers,:subjects,:staffs,:students,:exams,:departments,:holidays,:librarys,:staffs,:dashboards

  get 'events/index'
  get '/holidays/index'
  get '/librarys/index'
  get '/staffs/index'
  get '/teachers/index'
  get '/subjects/index'
  get '/students/index'
  get '/departments/index'
  post '/exams/intheory'
  get '/dashboards/index', to: 'dashboards#index'
  get '/events/index', to: 'events#index'
  get '/about', to: 'dashboards#about'
   root :controller => 'dashboards', :action => 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
