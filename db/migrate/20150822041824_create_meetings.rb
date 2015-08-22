class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer  :sharing_id
      t.integer  :teacher_id
      t.integer  :student_id
      t.datetime :date_and_time
      t.string   :hangouts_url
      t.text     :student_desired_outcome
      t.text     :student_questions
      t.text     :student_background

      t.timestamps null: false
    end
  end
end
