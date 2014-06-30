require 'rails_helper'

feature 'user views list of all cars' do

  scenario 'user goes to index page and sees list of cars' do
    cars = FactoryGirl.create_list(:car, 5)

    visit cars_path

    cars.each do |car|
      expect(page).to have_content(car.manufacturer.name)
      expect(page).to have_content(car.color)
      expect(page).to have_content(car.year)
      expect(page).to have_content(car.mileage)
      expect(page).to have_content(car.description)
    end
  end
end
