module Posts
  class PostPresenter
    attr_reader :post_id, :post
    attr_reader :ar_post, :detail

    def initialize(
        post_id,
        ar_post: Post,
        detail: Posts::Detail
    )
      @post_id = post_id

      @ar_post = ar_post
      @detail = detail
    end

    def on_present
      yield if post
    end

    def on_empty
      yield unless post
    end

    def post
      @post ||= detail.new(find_post)
    end

    private

    def find_post
      @find_post ||= ar_post.find_by(id: post_id)
    end
  end
end