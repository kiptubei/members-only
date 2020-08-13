# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_member!, only: %i[new create]

  def index
    @posts = Article.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(article_params)
    @post.save
    # flash.notice = "Article '#{@article.title}' Created!"
    redirect_to post_path(@post)
  end
end
