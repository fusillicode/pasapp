class LightSource < ActiveRecord::Base
  before_save :set_random_coordinates_if_missing

  has_many :sensors_data, class_name: 'SensorDatum'

  private

  def set_random_coordinates_if_missing
    return if self.raw_data[:position].present?
    self.raw_data = raw_data.merge random_position
  end

  def random_position
    { position: random_coordinates }
  end

  def random_coordinates
    { lat: random_lat, lng: random_lng }
  end

  def random_lat
    rand(45.396454...45.541639)
  end

  def random_lng
    rand(8.886936...9.314372)
  end
end
