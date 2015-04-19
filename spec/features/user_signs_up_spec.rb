require 'rails_helper'

feature 'User signs up' do

  before do
    @user = build(:user)
    @user2 = build(:user, password: '')
  end

  scenario 'successfully' do
    visit('/')
    click_link 'Sign up'
    fill_out_credentials(@user)
    expect(page).to have_content("Welcome")
  end

  scenario 'unsuccessfully' do
    visit('/')
    click_link 'Sign up'
    fill_out_credentials(@user2)
    expect(page).to have_content("error")
  end
  
end

# Need to make users confirm via email address