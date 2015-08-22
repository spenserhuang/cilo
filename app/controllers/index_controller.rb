class IndexController < ApplicationController
  def home
  end

  def browse
    @sharings = Sharing.all
  end
end
