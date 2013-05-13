require 'spec_helper'

describe StudentClass do
  it "can be instantiated" do
    StudentClass.new.should be_an_instance_of(StudentClass)
  end

  it "cannot be saved empty" do
    StudentClass.create.should_not be_persisted 
  end

  it "cannot be saved without a classroom" do
    sc = StudentClass.new
    sc.student = User.new
    sc.save.should eq(false)
  end

  it "cannot be saved without a student" do
    sc = StudentClass.new
    sc.classroom = Classroom.new
    sc.save.should eq(false)
  end

  it "can be saved with a classroom and student" do
    sc = StudentClass.new
    sc.student = User.new
    sc.classroom = Classroom.new
    sc.save.should eq(true)
  end 
end