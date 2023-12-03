# app/helpers/ratings_helper.rb

module RatingsHelper
  def render_rating(rating)
    full_star = '★'  # Represents a full star
    empty_star = '☆'  # Represents an empty star
    max_rating = 5    # Maximum rating value

    full_stars = full_star * rating
    empty_stars = empty_star * (max_rating - rating)

    full_stars + empty_stars
  end
end
