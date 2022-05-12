require "test_helper"

class NoteTest < ActiveSupport::TestCase
  test "validates that the body is present" do
    member = Member.new
    assert_not Note.new(member: member).valid? 
    assert Note.new(member: member, body: 'My body').valid? 
  end
end
