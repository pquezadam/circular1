class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:user_id, :title)
    end

end
