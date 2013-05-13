class Classroom < ActiveRecord::Base
  attr_accessible :classroom_id, :name

  has_many :student_classes
  has_many :students, :through => :student_classes, :class_name => 'User'

  has_many :classroom_assignments
  has_many :assignments, :through => :classroom_assignments

  belongs_to :teacher, :class_name => 'User'

  validates_presence_of :classroom_id
  validates_presence_of :name

  validate :teacher_not_nil

  def teacher_not_nil
    if teacher.nil?
      errors.add(:teacher, "can't be blank")
    end
  end
end
