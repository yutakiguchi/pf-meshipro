Rails.application.routes.draw do
  
  devise_for :cocks,controllers:{
    sessions:'cocks/sessions',
    regstractions:'cocks/registractions'
  }
  
  scope module: :cock do
    root to: 'homes#top'
    get 'about'=>'homes#about'
  end  
 
end
