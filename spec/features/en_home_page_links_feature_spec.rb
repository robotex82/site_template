require 'spec_helper'

feature "Links on '/en'" do
  def set_page
    @page = '/en'
  end

  @links = {
    'Home'             => '/en',
    'About us'         => '/en/about-us',
    'Approach'         => '/en/approach',
    'Contact'          => '/en/contact',

    'Imprint'          => '/en/imprint',
    'Terms of Service' => '/en/terms-of-service',
    
    'Deutsch'          => '/de',
    'English'          => '/en'
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

