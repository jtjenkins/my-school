require 'spec_helper'

describe Assignment do
  it "can be instantiated" do
    Assignment.new.should be_an_instance_of(Assignment)
  end

  it "cannot be saved empty" do
    Assignment.create.should_not be_persisted 
  end

  it "cannot be saved without a name" do
    assignment = Assignment.new
    assignment.save.should eq(false)
  end

  it "cannot be saved without title" do
    assignment = Assignment.new
    assignment.assigned_date = DateTime.now
    assignment.due_date = DateTime.now
    assignment.teacher = User.new
    assignment.save.should eq(false)
  end

  it "cannot be saved without assigned date" do
    assignment = Assignment.new
    assignment.title = "The Test assignment"
    assignment.due_date = DateTime.now
    assignment.teacher = User.new
    assignment.save.should eq(false)
  end

  it "cannot be saved without due date" do
    assignment = Assignment.new
    assignment.title = "The Test assignment"
    assignment.assigned_date = DateTime.now
    assignment.teacher = User.new
    assignment.save.should eq(false)
  end

  it "cannot be saved without a teacher" do
    assignment = Assignment.new
    assignment.title = "The Test assignment"
    assignment.assigned_date = DateTime.now
    assignment.due_date = DateTime.now
    assignment.save.should eq(false)
  end

  it "can be saved with all fields" do
    assignment = Assignment.new
    assignment.title = "The Test asignment"
    assignment.assigned_date = DateTime.now
    assignment.due_date = DateTime.now
    assignment.teacher = User.new
    assignment.save.should eq(true)
  end 
end