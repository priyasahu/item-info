Rails.application.routes.draw do
  resources :item_taxes
  resources :items
  resources :item_categories do
    collection do
      post 'calculate_tax'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "item_categories#index"
end
