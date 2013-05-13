class School < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :users
  has_many :administrators, :class_name => 'User',
        :conditions => ['admin = true']
  has_many :teachers, :class_name => 'User',
        :conditions => ['teacher = true']
  has_many :students, :class_name => 'User',
        :conditions => ['student = true']
  has_many :parents, :class_name => 'User',
        :conditions => ['parent = true']
end
