class AddnearestRefTproperties < ActiveRecord::Migration[5.0]
  def change
    add_reference :nearests, :property, foreign_key: true
  end
end
