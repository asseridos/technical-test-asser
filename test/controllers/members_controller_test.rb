require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  def test_index
    get '/members'
    assert_equal 200, status
    assert_select 'h1', 'Our Members'
    assert_select 'tr', 2 # Header + 1 row
  end

  def test_show
    get '/members/1'
    assert_equal 200, status
    assert_select 'h1', 'nicolas@orbit.love’s profile'
    assert_select 'blockquote', 'A sample note'
  end
end
