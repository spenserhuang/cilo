class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :last_name
      t.string   :first_name
      t.string   :username
      t.string   :password_digest
      t.string   :email
      t.string   :phone_number
      t.text     :description
      t.datetime :birth_date
      t.boolean  :is_expert

      t.timestamps null: false
    end
  end
end
