class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @review.booking = set_booking
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking.review = set_booking
    @review.user = current_user
    authorize @review
    @review.save ? (redirect_to user_path(current_user)) : (render :new)
  end

  private

  def review_params
    params.require(:review).permit(:title, :rating, :content)
  end

  def set_booking
    Booking.find(params.permit(:booking_id)[:booking_id].to_i)
  end
end
