class Sharing < ActiveRecord::Base

  has_many :meetings

  belongs_to :teacher, { class_name: "User" }

end
