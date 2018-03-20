Rails.application.routes.draw do
  get 'new_action', to: 'foreman_providers_cloud/hosts#new_action'
end
