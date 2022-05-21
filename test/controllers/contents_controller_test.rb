require "test_helper"

class ContentsControllerTest < ActionDispatch::IntegrationTest
  def test_new
    get '/members/1/contents/new', xhr: true
    assert_equal 200, status
  end

  def test_create
    post '/members/1/contents', xhr: true, params: { content: { description: 'MyText', url: 'MyString', type_of_content: 'MyType' } }
    assert_equal 200, status
    get '/members/1'
    assert_select 'blockquote.description', 'MyText'
    assert_select 'blockquote.url', 'MyString'
    assert_select 'blockquote.type_of_content', 'MyType'
  end
end
