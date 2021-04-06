require 'unit/test_helper'
require 'posts/posts_presenter'

describe Posts::PostsPresenter do
  subject { Posts::PostsPresenter.new(1, ar_post: ar_post_mock, post_detail: detail_mock).gather_data }

  let(:ar_post_mock) do
    mock = MiniTest::Mock.new
    mock.expect(:all, [post_obj_mock])
  end
  let(:post_obj_mock) { MiniTest::Mock.new }
  let(:detail_mock) do
    mock = MiniTest::Mock.new
    mock.expect(:new, 'post', [MiniTest::Mock])
  end

  it 'on_present' do
    result = subject.on_present { 'test' }
    assert_equal('test', result)
  end

  it 'on_empty' do
    result = subject.on_empty { 'test' }
    assert_nil(result)
  end
end