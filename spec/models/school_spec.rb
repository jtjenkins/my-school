require 'spec_helper'

describe School do
  it "can be instantiated" do
    School.new.should be_an_instance_of(School)
  end

  it "cannot be saved empty" do
    School.create.should_not be_persisted 
  end

  it "cannot be saved without a name" do
    school = School.new
    school.save.should eq(false)
  end

  it "can be saved with a name" do
    school = School.new
    school.name = "The Test School"
    school.save.should eq(true)
  end 
end