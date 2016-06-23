# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'hello', :to => 'polls#index'
post 'post/:id/vote', :to => 'polls#vote'