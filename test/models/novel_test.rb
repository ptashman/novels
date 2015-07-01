require 'test_helper'

class NovelTest < ActiveSupport::TestCase
  test "does not save without a title" do
    @novel_without_title = Novel.new
    assert @novel_without_title.save == false
  end

  test "does save with valid params" do
    @valid_novel = Novel.new(title: "valid title")
    assert @valid_novel.save == true
  end
end
