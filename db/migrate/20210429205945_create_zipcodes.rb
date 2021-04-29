class CreateZipcodes < ActiveRecord::Migration[6.1]
  def change
    create_table :zipcodes do |t|
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :lat
      t.string :long
      t.string :timezone
      t.string :daylight_savings
      t.string :geopoint

      t.timestamps
    end
  end
end
