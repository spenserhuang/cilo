class CreateSharings < ActiveRecord::Migration
  def change
    create_table :sharings do |t|
      t.integer  :teacher_id
      t.string   :title
      t.string   :location
      t.string   :topic
      t.text     :description
      t.float    :half_hour_rate

      t.timestamps null: false
    end
  end
end
