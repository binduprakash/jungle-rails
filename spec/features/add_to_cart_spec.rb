require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99,
        image: open_asset('apparel1.jpg'),
      )
    end
  end
  scenario "Load all product and add an item to Cart" do
    # Visit root path
    visit root_path

    # Make sure before test there is 0 in Card
    expect(page.find 'nav').to have_text 'My Cart (0)'

    # Click the first Add button on the screen
    page.first('form.button_to').find_button('Add').click

    save_screenshot

    # Make sure after test there is 1 in Card
    expect(page.find 'nav').to have_text 'My Cart (1)'

  end
end
