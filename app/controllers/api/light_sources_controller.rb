module Api
  class LightSourcesController < BaseController
    def index
      @light_sources = LightSource.all
    end

    def show
      @sensors_data = LightSource.find(params[:id]).sensors_data
    end
  end
end
