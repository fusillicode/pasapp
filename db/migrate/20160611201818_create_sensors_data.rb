class CreateSensorsData < ActiveRecord::Migration
  def change
    create_table :sensors_data do |t|
      t.references :light_source, index: true, foreign_key: true
      t.jsonb :raw_data, null: false
    end
  end
end
