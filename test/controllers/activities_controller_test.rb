require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  def test_index
    get '/activities'
    assert_equal 200, status
    assert_select 'h1', 'Activity feed'
    assert_select '.list-group-item', 1
  end
end
