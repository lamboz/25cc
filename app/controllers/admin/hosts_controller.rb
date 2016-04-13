class Admin::HostsController < Admin::BaseController
  before_action :set_host, except: [:index, :new, :create]

  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)

    respond_to do |format|
      if @host.save
        format.html { redirect_to admin_hosts_path }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def set_host
      @host = Host.find(params[:id])
    end

    def host_params
      params.require(:host).permit(:first_name, :last_name, :email)
    end
end
