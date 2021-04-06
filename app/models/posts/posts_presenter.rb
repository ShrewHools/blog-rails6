require 'will_paginate/array'

module Posts
  class PostsPresenter
    attr_reader :posts, :page
    attr_reader :ar_post, :post_detail

    def initialize(page, ar_post: Post, post_detail: Posts::Detail)
      @page = page

      @ar_post = ar_post
      @post_detail = post_detail
    end

    def gather_data
      @posts = Post.all.map do |post|
        post_detail.new(post)
      end.paginate(page: page, per_page: 3)

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