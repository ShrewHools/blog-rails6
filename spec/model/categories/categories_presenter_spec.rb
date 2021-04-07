require 'spec_helper'

describe Categories::CategoriesPresenter do
  subject { described_class.new(1) }

  describe '#gather_data' do
    before(:each) do
      @category = create(:category, :default_category)
      @post1 = create(:post, :default_post)
      @post2 = create(:post, :default_post)
      @category.posts << [@post1, @post2]
    end

    it 'returns all posts for category' do
      result = subject.gather_data.posts_details

      expect(result.count).to eq(2)
      expect(result.first.id).to eq(1)
    end
  end
end