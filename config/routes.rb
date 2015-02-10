Rails.application.routes.draw do
  resources    :names
  root         'welcome#index'
end
