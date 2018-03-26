class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.bigint "user_id"
      t.bigint "room_id"
      t.datetime "start_date"
      t.datetime "end_date"
      t.integer "price"
      t.integer "total"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "status", default: 0
      t.index ["room_id"], name: "index_reservations_on_room_id"
      t.index ["user_id"], name: "index_reservations_on_user_id"
      t.timestamps
    end
  end
end
