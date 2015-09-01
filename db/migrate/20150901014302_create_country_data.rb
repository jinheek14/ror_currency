class CreateCountryData < ActiveRecord::Migration
  def change
    create_table :country_data do |t|
      t.string :countryCode
      t.string :countryDescription

      t.timestamps null: false
    end
  end
end
