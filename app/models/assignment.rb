class Assignment < ActiveRecord::Base
  attr_accessible :assigned_date, :details, :due_date, :title

  has_many :assets
  has_many :classroom_assignments
  has_many :classes, :class_name => "Classroom"
  belongs_to :teacher, :class_name => "User"

  validates_presence_of :assigned_date
  validates_presence_of :due_date
  validates_presence_of :title

  validate :teacher_not_nil

  def teacher_not_nil
    if teacher.nil?
      errors.add(:teacher, "can't be blank")
    end
  end

end
