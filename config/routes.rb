Rails.application.routes.draw do
  get 'main/abc'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/welcome', to: 'main#welcome'    #class#func_n
  get '/contact_us', to: 'main#contact'
  get '/loop', to: 'ex2#loop'

end
