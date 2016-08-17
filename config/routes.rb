Rails.application.routes.draw do
  root 'main#home'
  get 'team', to: 'main#team'
  get 'contact', to: 'main#contact'
end
