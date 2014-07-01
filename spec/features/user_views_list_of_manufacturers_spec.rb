require 'rails_helper'

feature 'user views list of all manufacturers' do

  scenario 'user goes to index page and sees list of manufacturers' do
    manufacturer = FactoryGirl.create_list(:manufacturer, 5)

    visit manufacturers_path

    manufacturer.each do |manufacturer|
      expect(page).to have_content(manufacturer.name)
      expect(page).to have_content(manufacturer.country)
    end
  end
end
