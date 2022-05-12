require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  def test_new
    get '/members/1/notes/new', xhr: true
    assert_equal 200, status
  end

  def test_create
    post '/members/1/notes', xhr: true, params: { note: { body: 'Another note' } }
    assert_equal 200, status
    get '/members/1'
    assert_select 'blockquote', 'Another note'
  end
end
