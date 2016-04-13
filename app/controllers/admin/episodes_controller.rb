class Admin::EpisodesController < Admin::BaseController
  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)

    respond_to do |format|
      if @episode.save
        format.html { redirect_to admin_episodes_path }
      else
        format.html { render :new }
      end
    end
  end

  private

  def episode_params
    params.require(:episode).permit(:title, host_ids: [])
  end
end
