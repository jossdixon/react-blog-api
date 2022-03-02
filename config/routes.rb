Rails.application.routes.draw do
  scope '/api/version1' do
    resources :posts
  end
end
