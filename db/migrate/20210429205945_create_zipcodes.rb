class CreateZipcodes < ActiveRecord::Migration[6.1]
  def change
    create_table :zipcodes, { id: false } do |t|
      t.integer :zipcode, primary_key: true
      t.string :city
      t.string :state
      t.float :lat
      t.float :long
      t.integer :timezone
      t.boolean :daylight_savings
      t.float :geopoint

      t.timestamps
    end
  end
end
