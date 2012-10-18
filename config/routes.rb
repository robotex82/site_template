SiteTemplate::Application.routes.draw do
  localized(I18n.available_locales) do
    scope "/:i18n_locale", :constraints => {:i18n_locale => /#{I18n.available_locales.join('|')}/} do
      ActiveAdmin.routes(self)
      devise_for :admin_users, ActiveAdmin::Devise.config

      # ECM Contact
      Ecm::Contact::Routing.routes(self)

      # ECM CMS
      Ecm::Cms::Routing.routes(self)
    end
  end

  match "/", :to => redirect("/#{I18n.locale}")
end

