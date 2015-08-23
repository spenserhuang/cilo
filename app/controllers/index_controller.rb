class IndexController < ApplicationController


  skip_before_filter :verify_authenticity_token

  def home
  end

  def follow
    p "*" * 50
    p params[:email]
    p "*" * 50

    follower = Follower.new(email: params[:email])
    if follower.save
      redirect_to '/'
    end
  end

  def browse
    @sharings = Sharing.all
  end


end
