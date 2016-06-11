class CreateLightSources < ActiveRecord::Migration
  def change
    create_table :light_sources do |t|
      t.string :name
    end
  end
end
