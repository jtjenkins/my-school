class ClassroomAssignment < ActiveRecord::Base

  belongs_to :assignment
  belongs_to :classroom

  validate :connections_not_nil

  def connections_not_nil
    if assignment.nil?
      errors.add(:assignment, "can't be blank")
    end
    if classroom.nil?
      errors.add(:classroom, "can't be blank") 
    end
  end
end
 