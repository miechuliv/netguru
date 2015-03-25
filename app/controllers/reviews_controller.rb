class ReviewsController < ApplicationController

  expose(:review)
  expose(:product)
  expose(:category)






  def edit
  end

  def new

  end

  def create
    self.review = Review.new(review_params)
    #add user to review
    review.user = current_user

    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      # I believe there should be a redirect back to product on failure to add review
      # redirect_to category_product_url(product.category, product), notice: 'Failed to save review.'

      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
