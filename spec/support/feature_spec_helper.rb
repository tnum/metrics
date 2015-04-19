module FeatureSpecHelper

  RSpec.configure do |config|
    # Configure Rspec to include the module in feature specs:
    config.include FeatureSpecHelper, type: :feature
  end

  def add_site
  	visit '/'
  	click_link 'Add site'
  	within('form#new_site') do
  		# fill_in('Name', with: 'Google search engine')
  		find('#site_name').set('Google search engine')
  		fill_in('Url', with: 'www.google.com')
  		click_button 'Add site'
  	end
  end

end