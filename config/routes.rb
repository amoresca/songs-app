Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/songs" => "favorite_songs#index"
    get "/songs/:id" => "favorite_songs#show"
    post "/songs" => "favorite_songs#create"
    patch "/songs/:id" => "favorite_songs#update"
    delete "/songs/:id" => "favorite_songs#destroy"
  end
end
