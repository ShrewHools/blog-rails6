require 'unit/test_helper'
require 'posts/detail'

describe Posts::Detail do
  subject { Posts::Detail.new(post_mock) }

  let(:post_mock) do
    mock = MiniTest::Mock.new
    mock.expect(:preview_image, 'image_url')
    mock.expect(:id, 1)
    mock.expect(:description, 'desc')
    mock.expect(:title, 'title')
    mock.expect(:content, 'content')
  end

  it '#preview_image' do
    assert_equal('image_url', subject.preview_image)
  end

  it '#id' do
    assert_equal(1, subject.id)
  end

  it '#description' do
    assert_equal('desc', subject.description)
  end

  it '#title' do
    assert_equal('title', subject.title)
  end

  it '#content' do
    assert_equal('content', subject.content)
  end
end