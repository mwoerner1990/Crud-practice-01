Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/postings' => 'postings#index'
  get '/postings/new' => 'postings#new'
  post '/postings' => 'postings#create'
  get '/postings/:id' => 'postings#show'
  get '/postings/:id/edit' => 'postings#edit'
  patch '/postings/:id' => 'postings#update'
  delete '/postings/:id' => 'postings#destroy'
end
