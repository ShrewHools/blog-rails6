module Categories
  class CategoriesPresenter
    attr_reader :category_id, :category, :posts_details
    attr_reader :ar_category, :post_detail

    def initialize(category_id, ar_category: Category, post_detail: Posts::Detail)
      @category_id = category_id

      @ar_category = ar_category
      @post_detail = post_detail
    end

    def gather_data
      @category = ar_category.find_by(id: category_id)
      @posts_details = @category&.posts&.map do |post|
        post_detail.new(post)
      end

      self
    end

    def on_present
      yield if @category
    end

    def on_empty
      yield unless @category
    end

    def on_posts_present
      yield if @posts_details
    end

    def on_posts_empty
      yield unless @posts_details
    end
  end
end