require 'spec_helper'

feature "Links on '/de'" do
  def set_page
    @page = '/de'
  end

  @links = {
    'Home'        => '/de',
    'Über uns'    => '/de/ueber-uns',
    'Anfahrt'     => '/de/anfahrt',
    'Kontakt'     => '/de/kontakt',

    'Impressum'   => '/de/impressum',
    'AGB'         => '/de/agb',
    
    'Deutsch'     => '/de',
    'English'     => '/en'
  }

  @links.each do |link, target|
    describe "click '#{link}' should link to '#{target}'" do
      background do
        set_page
        visit @page
        # click_link link
        first(:link, link).click
      end

      scenario 'should have the status code 200' do
        page.status_code.should eq(200)
      end # scenario

      scenario 'should link to the correct target' do
        page.current_path.should eq(target)
      end # scenario

    end # describe "click '#{link}' on '#{@page}'"
  end # each

end # feature

