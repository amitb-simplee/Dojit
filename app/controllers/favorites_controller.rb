class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)

    if favorite.save
      # Add code to generate a success flash and redirect to @post
      flash[:notice] = "Favorite this post."
      # Remember the path shortcut: [@post.topic, @post]
    else
      # Add code to generate a failure flash and redirect to @post
      flash[:error] = "There was an error favoriting the post. Please try again."
    end
    redirect_to [@post.topic, @post]
  end

  def destroy
    # Get the post from the params
    @post = Post.find(params[:post_id])
    # Find the current user's favorite with the ID in the params
  	favorite = Favorite.find_by_user_id_and_post_id(current_user.id,@post.id)
    if favorite.destroy
      # Flash success and redirect to @post
      flash[:notice] = "favorited post was deleted."
    else
      # Flash error and redirect to @post
      flash[:notice] = "There was an error deleting the favorited from post."
    end
    redirect_to [@post.topic, @post]
  end
end
