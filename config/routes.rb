Rails.application.routes.draw do
 get '/' => 'parrots#index'
 get  '/parrots' => 'parrots#index'

 get  '/parrots/new' => 'parrots#new'
 post '/parrots/create' => 'parrots#create'

 get '/parrots/:id' => 'parrots#show'

 get '/parrots:id/edit' => 'parrots#edit'
 patch 'parrots/:id' => 'parrots#update'

 delete '/parrots/:id' => 'parrots#destroy'
end
