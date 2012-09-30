SiteTemplate::Application.routes.draw do
  localized(I18n.available_locales) do
    scope "/:i18n_locale", :constraints => {:i18n_locale => /#{I18n.available_locales.join('|')}/} do 
      match 'about' => 'home#about', :as => 'about'
      match 'imprint' => 'home#imprint', :as => 'imprint'
      root :to => 'home#index'
    end  
  end  

  match "/", :to => redirect("/#{I18n.locale}") 
end
