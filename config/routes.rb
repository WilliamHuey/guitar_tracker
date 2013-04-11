GuitarTracker::Application.routes.draw do
  root to: 'guitars#index'
  get "guitars/index"


end
