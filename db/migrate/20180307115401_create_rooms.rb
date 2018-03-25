class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string      :name,    null: false
      t.text        :image,  null: false
      t.text        :user_id,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
