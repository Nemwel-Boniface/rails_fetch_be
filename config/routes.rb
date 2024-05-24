Rails.application.routes.draw do
  get 'cat_facts', to: 'cat_facts#index'
  devise_for :users, path:'', path_names: {
    sign_in: "login",
    sign_out: "logout",
    registration: "signup"
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  },
  defaults: {format: :json}
end
