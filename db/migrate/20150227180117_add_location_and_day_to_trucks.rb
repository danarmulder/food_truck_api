class AddLocationAndDayToTrucks < ActiveRecord::Migration
  def change
    add_column :trucks, :latitude, :string
    add_column :trucks, :longitude, :string
    add_column :trucks, :day, :string
  end
end
