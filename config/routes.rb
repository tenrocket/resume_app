Resume::Application.routes.draw do

  resources :job_positions do
    collection do
      get :filter
    end
  end

  resources :skills
  
end
