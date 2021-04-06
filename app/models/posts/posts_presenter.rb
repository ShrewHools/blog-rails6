module Posts
  class PostsPresenter
    attr_reader :posts
    attr_reader :ar_post, :post_detail

    def initialize(ar_post: Post, post_detail: Posts::Detail)
      @ar_post = ar_post
      @post_detail = post_detail
    end

    def gather_data
      @posts = Post.all.map do |post|
        post_detail.new(post)
      end

      self
    end

    def on_present
      yield if @posts
    end

    def on_empty
      yield unless @posts
    end
  end
end