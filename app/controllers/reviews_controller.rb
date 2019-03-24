class ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        print @review.valid?

        @review.save
        redirect_to :back
    end
    def destroy
        @review = Review.find(params[:id])
        if (current_user && current_user.id == @review.user.id)
            @review.destroy
        end
        redirect_to :back
    end
    private
    def review_params
        params.require(:review).permit(
            :description,
            :rating,
            :product_id,
            :user_id
        )
    end
end
