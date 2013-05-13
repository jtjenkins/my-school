require 'spec_helper'

describe ClassroomAssignment do
  it "can be instantiated" do
    ClassroomAssignment.new.should be_an_instance_of(ClassroomAssignment)
  end

  it "cannot be saved empty" do
    ClassroomAssignment.create.should_not be_persisted 
  end

  it "cannot be saved without a classroom" do
    ca = ClassroomAssignment.new
    ca.assignment = Assignment.new
    ca.save.should eq(false)
  end

  it "cannot be saved without an assignment" do
    ca = ClassroomAssignment.new
    ca.classroom = Classroom.new
    ca.save.should eq(false)
  end

  it "can be saved with a classroom and assignment" do
    ca = ClassroomAssignment.new
    ca.assignment = Assignment.new
    ca.classroom = Classroom.new
    ca.save.should eq(true)
  end 
end