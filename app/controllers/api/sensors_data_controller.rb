module Api
  class SensorsDataController < BaseController
    def index
      @sensors_data = SensorDatum.all
    end

    def create
      @sensor_datum = SensorDatum.new(raw_data: sensor_datum_params)
      return render_created(api_sensors_datum_url(@sensor_datum)) if @sensor_datum.save
      render_errors @sensor_datum
    end

    private

    def sensor_datum_params
      params[:sensors_datum]
    end
  end
end
