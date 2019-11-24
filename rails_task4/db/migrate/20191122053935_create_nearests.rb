class CreateNearests < ActiveRecord::Migration[5.0]
  def change
    create_table :nearests do |t|
      t.string :route_name
      t.string :station
      t.integer :time

      t.timestamps
    end
  end
end
