class FavoriteMailer < ActionMailer::Base
  default from: "amit.b@simplee.com"

  def new_comment(user, post, comment)

    # New Headers
    headers["Message-ID"] = "<comments/#{comment.id}@infinite-scrubland-90907.heroku>"
    headers["In-Reply-To"] = "<post/#{post.id}@infinite-scrubland-90907.heroku>"
    headers["References"] = "<post/#{post.id}@infinite-scrubland-90907.heroku>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
