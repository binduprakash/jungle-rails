require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
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
  scenario "Load all product" do
    # Visit root path
    visit root_path

    # fink first product's link and click it
    find_link(Product.first.name, href: '/products/' + Product.first.id.to_s).click

    # Expect to have Name Description Quantity and Price in the Product Details page
    expect(page).to have_text "Name" and have_text "Description" and have_text "Quantity" and have_text "Price"
  end
end
