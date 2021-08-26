Rails.application.routes.draw do
  get 'main/abc'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'main/welcome', to: 'main#welcome'    #class#func_n
  get 'main/contact_us', to: 'main#contact'


end
