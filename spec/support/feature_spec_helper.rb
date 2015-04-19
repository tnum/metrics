module FeatureSpecHelper

  RSpec.configure do |config|
    # Configure Rspec to include the module in feature specs:
    config.include FeatureSpecHelper, type: :feature
  end

  def fill_out_credentials(user)
    within 'form' do
      fill_in( 'Name', with: user.name )
      fill_in( 'Email', with: user.email )
      fill_in( 'Password', with: user.password )
      fill_in( 'Password confirmation', with: user.password )
      click_button( 'Sign up' )
    end
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