module PostsHelper
  def display_author(post)
    if member_signed_in?
      "By: #{post.member.name}"
    end
  end
end
