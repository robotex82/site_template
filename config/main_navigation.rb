# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav'
    primary.item :home, I18n.t('navigation.items.home'), root_path
    primary.item :about, I18n.t('navigation.items.about'), about_path
    primary.item :imprint, I18n.t('navigation.items.imprint'), imprint_path
  end
end

