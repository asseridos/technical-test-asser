require "test_helper"

class ContentTest < ActiveSupport::TestCase
  test "validates that the url is present" do
    member = Member.new
    assert_not Content.new(member: member).valid? 
    assert Content.new(member: member, url: 'MyUrl').valid? 
  end
end
