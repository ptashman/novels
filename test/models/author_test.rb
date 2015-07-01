require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "does not save without a name" do
    @author_without_name = Author.new
    assert @author_without_name.save == false
  end

  test "does save with valid params" do
    @valid_author = Author.new(name: "valid name")
    assert @valid_author.save == true
  end
end
