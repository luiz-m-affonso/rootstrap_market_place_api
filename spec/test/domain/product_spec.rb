require 'rails_helper'

module Domain
  describe Product do
    let(:user) { create(:user) }
    let(:product) {
      described_class.new(
        title: 'Product title',
        price: 100,
        published: true,
        user_id: user.id
      )
    }
    describe '#initialize' do
      it 'should create a new product' do
        product = Product.new(title: 'test', price: 10, published: true, user_id: 1)
        expect(product.title).to eq('test')
        expect(product.price).to eq(10)
        expect(product.published).to eq(true)
        expect(product.user_id).to eq(1)
      end
    end
  end
end
