When /^I click "(.*?)"$/ do |link_text|
  click_link link_text
end

Then /^I should be on the "(.*?)" page$/ do |page_path|
  URI.parse(current_url).path == page_path
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have_content(content)
end

Then /^the request should be successful$/ do
  page.status_code.should be(200)
end

