class User < ActiveRecord::Base

  has_many :sharings, { class_name: "Sharing", foreign_key: "teacher_id" }
  has_many :meetings, { class_name: "Meeting", foreign_key: "teacher_id" }
  has_many :meetings, { class_name: "Meeting", foreign_key: "student_id" }

  has_secure_password

end
