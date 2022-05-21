require "test_helper"

class ActivityTest < ActiveSupport::TestCase
  test "validates that a member can have multiple activities" do
    member = Member.new
    activityOne = Activity.new(member: member, url: 'Url1')
    assert Activity.new(member: member, url: 'Url2').valid? 
  end
end
