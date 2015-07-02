ApiServer::Application.routes.draw do
  
  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"
    
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1 do
      resources :companies
    end
  end
end
