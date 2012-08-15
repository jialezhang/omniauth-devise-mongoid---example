Omniauth::Application.routes.draw do

  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks",
    :registrations => "registrations"}  
    #下面的是为了防止账户错误的问题的而写的
  devise_scope :user do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end

  resources :blogs

   root :to => 'blogs#index'

end
