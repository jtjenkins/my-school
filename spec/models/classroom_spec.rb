require 'spec_helper'

describe Classroom do
  it "can be instantiated" do
    Classroom.new.should be_an_instance_of(Classroom)
  end

  it "cannot be saved empty" do
    Classroom.create.should_not be_persisted 
  end

  it "cannot be saved without a name" do
    classroom = Classroom.new
    classroom.save.should eq(false)
  end

  it "cannot be saved without classroom id" do
    classroom = Classroom.new
    classroom.name = "Lit 123"
    classroom.teacher = User.new
    classroom.save.should eq(false)
  end

  it "cannot be saved without name" do
    classroom = Classroom.new
    classroom.classroom_id = "1234"
    classroom.teacher = User.new
    classroom.save.should eq(false)
  end

  it "cannot be saved without teacher" do
    classroom = Classroom.new
    classroom.classroom_id = "1234"
    classroom.name = "Lit 123"
    classroom.save.should eq(false)
  end

  it "can be saved with all fields populated" do
    classroom = Classroom.new
    classroom.classroom_id = "1234"
    classroom.name = "Lit 123"
    classroom.teacher = User.new
    classroom.save.should eq(true)
  end
end