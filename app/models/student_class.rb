class StudentClass < ActiveRecord::Base
  attr_accessible :classroom_id, :student_id

  belongs_to :student, :class_name => 'User'
  belongs_to :classroom

  validate :connections_not_nil

  def connections_not_nil
    if student.nil?
      errors.add(:student, "can't be blank")
    end
    if classroom.nil?
      errors.add(:classroom, "can't be blank") 
    end
  end
end
