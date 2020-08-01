require 'rails_helper'
RSpec.describe Product, type: :model do
let!(:product) {create(:product)}
let!(:user) {create(:user)}
let!(:purchased) {create(:purchased)}
let!(:cart_product) {create(:cart)}
  context "Validating the Product" do
    it "tests the product has name" do
      product.name = ''
      expect(product).not_to be_valid

    end

    it "ensures product has a description" do
      product.description = ''
      expect(product).not_to be_valid
    end

    it "ensures the product has a category" do
      product.category = ''
      expect(product).not_to be_valid
    end

    it "ensures the product has a price" do
      product.price = ''
      expect(product).not_to be_valid
    end

  end

end
