class HomeController < ApplicationController
  def index
    @current_episode = Episode.current
    @episodes = Episode.past_episodes
  end
end
