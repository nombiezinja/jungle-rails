class ReviewsController < ApplicationController

  before_filter :authorize

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @product = Product.find params[:product_id]
    @review.user_id = current_user.id
    @review.product_id = @product.id
    if @review.save
      redirect_to @product, notice: 'Review created!'
    else
      redirect_to @product, notice: 'Review was not created.'
    end
  end

  def destroy
    @review = Review.find params[:product_id]
    @review.destroy
    @product = Product.find params[:id]
    redirect_to @product, notice: 'Review deleted!'
  end

  private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )

  end

end
