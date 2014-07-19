require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save with blank body" do
  	entry = Entry.new
  	assert_not entry.save , "Saved the post with a blank body"
  end
end
