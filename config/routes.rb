Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "fortune_method"
  get "/beer", controller: "my_examples", action: "ninetynine_method"
end
