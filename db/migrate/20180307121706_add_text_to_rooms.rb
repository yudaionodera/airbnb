class AddTextToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :country, :string
    add_column :rooms, :text, :string
    add_column :rooms, :price, :string
  end
end
