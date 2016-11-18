class CreateSoirees < ActiveRecord::Migration
  def change
    create_table :soirees do |t|
      t.string :title
      t.date :date_event
      t.string :picture
      t.time :time_event
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
