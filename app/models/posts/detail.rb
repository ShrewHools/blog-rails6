module Posts
  class Detail
    attr_reader :post

    def initialize(post)
      @post = post
    end

    def preview_image
      post.preview_image
    end

    def created_at
      post.created_at.to_formatted_s(:long_ordinal)
    end

    def id
      post.id
    end

    def description
      post.description
    end

    def title
      post.title
    end

    def content
      post.content
    end
  end
end