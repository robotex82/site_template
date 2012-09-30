SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav'
      primary.item :de, :de, "/de", :highlights_on => /\/de/
      primary.item :en, :en, "/en", :highlights_on => /\/en/
  end
end

