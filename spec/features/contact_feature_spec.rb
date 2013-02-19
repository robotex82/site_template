require 'spec_helper'

feature 'contact' do
  describe 'access the contact request page' do
    background do
      visit '/de'
      first(:link, 'Kontakt').click
    end # background

    scenario 'should have the status code 200' do
      page.status_code.should eq(200)
    end # scenario

    scenario 'should link to the correct target' do
      page.current_path.should eq('/de/kontakt')
    end # scenario

    scenario 'should have the correct title' do
      title = "Kontaktanfrage"
      first('title').native.text.should eq(title)
    end # scenario

    scenario 'should have the correct meta description' do
      description = "Kontaktieren Sie uns über unser Kontaktformular"
      page.should have_css("meta[name=\"description\"][content=\"#{description}\"]")
    end # scenario

    describe 'file a new contact request' do
      background do
        ActionMailer::Base.deliveries = []
      end # background

      describe 'with a correctly filled form' do
        background do
          fill_in 'ecm_contact_request[name]',    :with => 'John Doe'
          fill_in 'ecm_contact_request[email]',   :with => 'john.doe@example.com'
          fill_in 'ecm_contact_request[message]', :with => 'This is an example message.'
          check   'ecm_contact_request[terms_of_service]'
          find(:xpath, '//button[@type="submit"]').click
        end # background

        scenario 'should send an email' do
          ActionMailer::Base.deliveries.size.should eq(1)
        end # scenario

        scenario 'should show a success message' do
          page.body.should include('Ihre Kontaktanfrage wurde versandt.')
        end # scenario
      end # describe 'with a correctly filled form'

      describe 'without acceptance of tos' do
        background do
          fill_in 'ecm_contact_request[name]',    :with => 'John Doe'
          fill_in 'ecm_contact_request[email]',   :with => 'john.doe@example.com'
          fill_in 'ecm_contact_request[message]', :with => 'This is an example message.'
          find(:xpath, '//button[@type="submit"]').click
        end # background

        scenario 'should not send an email' do
          ActionMailer::Base.deliveries.size.should eq(0)
        end # scenario

        scenario 'should not show a success message' do
          page.body.should_not include('Ihre Kontaktanfrage wurde versandt.')
        end # scenario
      end # describe 'with a correctly filled form'
    end # describe 'file a new contact request'
  end # describe 'access the contact request page'
end # feature

