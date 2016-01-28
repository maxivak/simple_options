Rails.application.routes.draw do

  get 'debug/:action', to: 'debug#action'

  #mount SimpleOptions::Engine => "/simple_options"
end
