require 'rails_helper'

RSpec.describe Product, type: :model do


  describe 'Validation' do
    it 'cannot create product without a name' do
      category = Category.new(name: 'furniture')
      product = Product.new name: nil, price: 400, category: category, quantity: 5
      expect(product).to_not be_valid
    end

    it 'cannot create product without a price' do
      category = Category.new(name: 'furniture')
      product = Product.new price: nil, name: 'thing', category: category, quantity: 5
      expect(product).to_not be_valid
    end

    it 'cannot create product without a quantity' do
      category = Category.new(name: 'furniture')
      product = Product.new quantity: nil, price: 400, category:category, name: 'thing'
      expect(product).to_not be_valid
    end

    it 'cannot create product without a category' do
      product = Product.new category: nil, price: 400, quantity: 5, name: 'thing'
      expect(product).to_not be_valid
    end

  end
end
