Rails.application.routes.draw do
 #top
root 'posts#index'

post'posts/create'=>'posts#create',as: 'posts'
#singup
#  resource :sessions, only: [:new, :create, :destroy]
get 'login' => 'sessions#new' 
post 'login'=>'sessions#create' 
delete 'logout'=>'sessions#destroy'
#login
get 'signup' => 'users#new', as: 'signup'
post "users/create" => 'users#create', as: 'user'
#mypage
get 'mypage' =>'users#mypage', as: 'mypage'

get 'post' => 'posts#show'
get 'users' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
