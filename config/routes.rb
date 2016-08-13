Rails.application.routes.draw do
  root 'main#home'
  get 'team', to: 'main#team'
end
