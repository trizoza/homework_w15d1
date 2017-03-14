require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "has title" do
    assert_equal "Peep Show", shows(:two).title
  end
end
