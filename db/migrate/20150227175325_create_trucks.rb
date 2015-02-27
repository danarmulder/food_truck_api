class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :description
      t.string :link
      t.string :starttime
      t.string :endtime
      t.boolean :verified

      t.timestamps
    end
  end
end
