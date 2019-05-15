class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(new_review_params)

    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render template: 'restaurants/show'
    end
  end

  private

  def new_review_params
    params.require(:review).permit(:content, :rating)
  end
end

#{"utf8"=>"✓", "authenticity_token"=>"FgooycDcOKboKQ1mVkPv8JfIB8bZAm+Ml+4MUbtU7MFebt+TLAAdRho8TAqPleFJwrqVs9h7n2yigz74NP+81w==", "review"=>{"content"=>"Hello", "rating"=>"3"}, "commit"=>"Create Review", "restaurant_id"=>"7"}
