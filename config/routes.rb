Rails.application.routes.draw do
  root 'main#home'
  get 'team', to: 'main#team'
  get 'contact', to: 'main#contact'
  post 'contacted', to: 'emails#create'
end
