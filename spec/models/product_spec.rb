require 'spec_helper'

describe Product do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :price }

    describe '#price' do
      let(:product) { build(:product, price: 1.234) }

      it 'is limited to two decimal places' do
        expect(product).to_not be_valid
      end
    end

    describe '#average_rating' do
      let(:user)    { create(:user) }
      let(:product) { create(:product) }
      # I was getting "User blank error", I had to pass user_id attribute
      let(:review1) { create(:review, rating: 2, user: user, user_id: user.id) }
      let(:review2) { create(:review, rating: 3, user: user, user_id: user.id) }

      before do


        product.reviews << [review1, review2]
      end

      it 'calculates average rating' do
        expect(product.average_rating).to eq 2.5
      end
    end
  end
end
