Rails.application.routes.draw do
  devise_for :customers
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
    resources :items, except: [:destroy]
    resources :orders, only: [:index, :show, :update] do
    end
  end
end
