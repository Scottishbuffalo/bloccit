Rails.application.routes.draw do
  resources :topics do
    resources :posts, :advertisements, :questions, :sponsoredposts, except: [:index]
  end

  get 'about' => 'welcome#about'
  root 'welcome#index'
end
