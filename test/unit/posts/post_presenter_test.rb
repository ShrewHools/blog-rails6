require 'unit/test_helper'
require 'posts/post_presenter'

describe Posts::PostPresenter do
  subject { Posts::PostPresenter.new(1, ar_post: ar_post_mock, detail: detail_mock) }

  let(:ar_post_mock) do
    mock = MiniTest::Mock.new
    mock.expect(:find_by, 'find_post', [Hash])
  end

  let(:detail_mock) do
    mock = MiniTest::Mock.new
    mock.expect(:new, 'post', ['find_post'])
  end

  it '#post' do
    assert_equal('post', subject.post)
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