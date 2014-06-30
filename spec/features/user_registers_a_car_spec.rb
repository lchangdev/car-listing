require 'rails_helper'

feature 'user registers a car' do

  scenario 'user fills out a new car form' do
    car = FactoryGirl.create(:car)

    visit new_car_path

    select('Toyota', from: 'Manufacturer')
    fill_in 'Color', with: car.color
    fill_in 'Year', with: car.year
    fill_in 'Mileage', with: car.mileage
    fill_in 'Description', with: car.description

    click_on 'Create Car'

    expect(page).to have_content('Success')
    expect(page).to have_content car.color
    expect(page).to have_content car.year
    expect(page).to have_content car.mileage
    expect(page).to have_content car.description
  end

  scenario 'user does not supply a details' do
    visit new_car_path

    click_on 'Create Car'

    expect(page).to_not have_content('Success')
    expect(page).to have_content("can't be blank")
    expect(page).to have_content('Error')
  end
end
