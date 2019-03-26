require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should be saved successfully' do 
      @category = Category.new(name: 'Footwear')
      @product = Product.new(
        name: 'Shape',
        price: 34.5,
        category: @category,
        quantity:5
      )
      @product.save!
      expect(@product.id).to be_present
    end
    it 'should throw an error for nil not allow for name' do 
      @category = Category.new(name: 'Footwear')
      @product = Product.new(
        name: nil,
        price: 34.5,
        category: @category,
        quantity:5
      )
      @product.valid?
      "Name can't be blank".should == @product.errors.full_messages[0]
    end
    it 'should throw an error for nil not allow for price' do 
      @category = Category.new(name: 'Footwear')
      @product = Product.new(
        name: "Shape",
        category: @category,
        quantity:5
      )
      @product.valid?
      "Price cents is not a number".should == @product.errors.full_messages[0]
    end
    it 'should throw an error for nil not allow for category' do 
      @product = Product.new(
        name: "Shape",
        price: 34.5,
        category: nil,
        quantity:5
      )
      @product.valid?
      "Category can't be blank".should == @product.errors.full_messages[0]
    end
    it 'should throw an error for nil not allow for quantity' do 
      @category = Category.new(name: 'Footwear')
      @product = Product.new(
        name: "Shape",
        price: 34.5,
        category: @category,
        quantity:nil
      )
      @product.valid?
      "Quantity can't be blank".should == @product.errors.full_messages[0]
    end
  end
end
