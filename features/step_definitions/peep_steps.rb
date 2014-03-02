Given(/^there are a bunch of peeps$/) do
  # Creating a peep in database
  @those_peeps = ['Hello', 'whaddup', 'chitter is amazing']
  @those_peeps.each do |body|
    # Peep is referring the the Peep model
    Peep.create(body: body)
  end
end

When(/^I visit chitter$/) do
  # visit root
  visit '/'
end

Then(/^i should see those peeps$/) do
  # iterating over the array becuase those peeps should be there
  @those_peeps.each do |peep|
    expect(page).to have_content(peep)
  end
end
  