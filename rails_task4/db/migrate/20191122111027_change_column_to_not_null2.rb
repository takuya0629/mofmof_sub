class ChangeColumnToNotNull2 < ActiveRecord::Migration[5.0]
  def change
    change_column_null :nearests, :station, null: false
    change_column :nearests, :station, :string, default: "0", null: false
    change_column_null :nearests, :time, null: false
    change_column :nearests, :time, :integer, default: 0, null: false
    change_column_null :properties, :name, null: false
    change_column :properties, :name, :string, default: "0", null: false
    change_column_null :properties, :rent, null: false
    change_column :properties, :rent, :integer, default: 0, null: false
    change_column_null :properties, :address, null: false
    change_column :properties, :address, :string, default: "0", null: false
    change_column_null :properties, :age, null: false
    change_column :properties, :age, :integer, default: 0, null: false
    change_column_null :properties, :content, null: false
    change_column :properties, :content, :text, default: "0", null: false
  end
end