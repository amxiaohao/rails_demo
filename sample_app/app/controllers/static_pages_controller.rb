class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      # @feed_items = current_user.microposts
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
