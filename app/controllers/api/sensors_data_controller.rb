module Api
  class SensorsDataController < BaseController
    def index
      @sensors_data = SensorDatum.all
    end

    def create
      @sensor_datum = light_source.sensors_data.new(raw_data: sensor_datum_params)
      return render_created(api_sensors_datum_url(@sensor_datum)) if @sensor_datum.save
      render_errors sensor_datum
    end

    private

    def light_source
      @light_source ||= LightSource.find_or_create_by id: sensor_datum_params[:id]
    end

    def sensor_datum_params
      params[:sensors_datum]
    end
  end
end
