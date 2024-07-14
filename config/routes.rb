Rails.application.routes.draw do 
 root "perifericos#index"
 resources :perifericos , only: [:new, :create, :show, :edit, :update, :destroy]
end
