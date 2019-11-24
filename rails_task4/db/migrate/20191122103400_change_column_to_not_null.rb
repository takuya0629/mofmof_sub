class ChangeColumnToNotNull < ActiveRecord::Migration[5.0]
  def change
    change_column_null :nearests, :route_name, null: false
    change_column :nearests, :route_name, :string, default: "0", null: false
  end
end
