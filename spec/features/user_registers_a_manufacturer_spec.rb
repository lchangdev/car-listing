require 'rails_helper'

feature 'user registers a manufacturer' do

  scenario 'user fills out a new manufacturer form' do
    manufacturer = FactoryGirl.create(:manufacturer)
    visit new_manufacturer_path

    fill_in 'Name', with: manufacturer.name
    fill_in 'Country', with: manufacturer.country

    click_on 'Create Manufacturer'

    expect(page).to have_content('Success')
    expect(page).to have_content manufacturer.name
    expect(page).to have_content manufacturer.country
  end

  scenario 'user does not supply a name or country' do
    visit new_manufacturer_path

    click_on 'Create Manufacturer'

    expect(page).to_not have_content('Success')
    expect(page).to have_content("can't be blank")
    expect(page).to have_content('Error')
  end
end
