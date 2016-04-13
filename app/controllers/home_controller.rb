class HomeController < ApplicationController
  def index
    @current_episode = Episode.current
    @episodes = Episode.published.order("published_at DESC")
  end
end
