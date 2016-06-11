module Api
  class SensorsDataController < BaseController
    def index
      @sensors_data = SensorData.all
    end

    def create
      SensorData.create raw_data: request.body.read.to_json
    end

    private

    def sensors_data_params
      params
    end
  end
end
