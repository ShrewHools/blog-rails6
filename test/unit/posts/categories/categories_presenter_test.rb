require 'unit/test_helper'
require 'categories/categories_presenter'

describe Categories::CategoriesPresenter do
  subject { Categories::CategoriesPresenter.new(1, ar_category: ar_category_mock, post_detail: detail_mock).gather_data }

  let(:ar_category_mock) do
    mock = MiniTest::Mock.new
    mock.expect(:find_by, mock, [Hash])
    mock.expect(:posts, %w(post1 post2))
  end
  let(:detail_mock) do
    mock = MiniTest::Mock.new
    2.times { mock.expect(:new, 'post', [String]) }

    mock
  end

  it 'on_present' do
    result = subject.on_present { 'test' }
    assert_equal('test', result)
  end

  it 'on_empty' do
    result = subject.on_empty { 'test' }
    assert_nil(result)
  end

  it 'on_posts_present' do
    result = subject.on_posts_present { 'test' }
    assert_equal('test', result)
  end

  it 'on_posts_empty' do
    result = subject.on_posts_empty { 'test' }
    assert_nil(result)
  end
end