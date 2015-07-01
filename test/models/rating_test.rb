require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  test "does not save without stars" do
    @rating_without_stars = Rating.new(novel_id: 1, user_id: 1)
    assert @rating_without_stars.save == false
  end

  test "does not save without a novel id" do
    @rating_without_novel_id = Rating.new(stars: 1, user_id: 1)
    assert @rating_without_novel_id.save == false
  end

  test "does not save without a user id" do
    @rating_without_user_id = Rating.new(novel_id: 1, stars: 1)
    assert @rating_without_user_id.save == false
  end

  test "does save with valid params" do
    @valid_rating = Rating.new(stars: 1, novel_id: 1, user_id: 1)
    assert @valid_rating.save == true
  end
end
