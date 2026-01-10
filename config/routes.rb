Rails.application.routes.draw do
  # トップページをスケジュール一覧ページに設定
  root "schedules#index"

  # CRUD用のルートをまとめて作成
  resources :schedules

  # 確認用
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA関連
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end