class Admin::EpisodesController < Admin::BaseController
  before_action :set_episode, only: [:edit, :update]

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
    @episode.build_audio
  end

  def create
    @episode = Episode.new(episode_params)

    respond_to do |format|
      if @episode.save
        format.html { redirect_to admin_episodes_path }
      else
        p @episode.errors
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    @episode.update(episode_params)
    redirect_to admin_episodes_path
  end

  private
    def set_episode
      @episode = Episode.find(params[:id])
    end

    def episode_params
      params.require(:episode).permit(:title, :description, audio_attributes: [:media], host_ids: [])
    end
end
