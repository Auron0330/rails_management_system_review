Rails.application.routes.draw do
  resources :products                 #⇒（リソースフルな商品ルーティング）
  resources :orders, only: [:index, :create, :destroy, :show] do     #⇒（従来のnewアクションを削除）
    get :cart, on: :collection        #⇒（getメソッドに基づく、cartアクションのルートを追加）
    put :new, on: :collection         #⇒（PUTメソッドに基づく、newアクションのルートを追加）
  end
end