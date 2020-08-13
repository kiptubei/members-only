# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_member!, only: %i[new create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    if @post.save
      flash.notice = "Post Created!"
      redirect_to posts_path
    else
      flash['alert'] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
