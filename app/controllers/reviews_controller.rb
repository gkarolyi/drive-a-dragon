class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @review.booking = Booking.find(review_params['booking_id'].to_i)
    raise
    authorize @review
  end

  private

  def review_params
    params.permit(:booking_id)
  end
end
