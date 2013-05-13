require 'spec_helper'

describe User do
  it "can be instantiated" do
    User.new.should be_an_instance_of(User)
  end

  it "cannot be saved empty" do
    User.create.should_not be_persisted 
  end

  it "cannot be saved without an email" do
    user = User.new
    user.password = "password"
    school = School.new 
    school.name = "The Test School"
    school.save
    user.school = school 
    user.first_name = "Jordan"
    user.last_name = "Jenkins"
    user.save.should eq(false)
  end

  it "cannot be saved without a password" do
    user = User.new
    user.email = "test@test.com"
    school = School.new 
    school.name = "The Test School"
    school.save
    user.school = school 
    user.first_name = "Jordan"
    user.last_name = "Jenkins"
    user.save.should eq(false)
  end

  it "cannot be saved without a school" do
    user = User.new
    user.email = "test@test.com"
    user.password = "password"
    user.first_name = "Jordan"
    user.last_name = "Jenkins" 
    user.save.should eq(false)
  end

  it "cannot be saved without a first name" do
    user = User.new
    user.email = "test@test.com"
    user.password = "password"
    school = School.new 
    school.name = "The Test School"
    school.save
    user.school = school 
    user.last_name = "Jenkins"
    user.save.should eq(false)
  end

  it "cannot be saved without a last name" do
    user = User.new
    user.email = "test@test.com"
    user.password = "password"
    school = School.new 
    school.name = "The Test School"
    school.save
    user.school = school 
    user.first_name = "Jordan"
    user.save.should eq(false)
  end

  it "cannot be saved with an invalid school" do
    user = User.new
    user.email = "test@test.com"
    user.password = "password"
    school = School.new
    school.save
    user.school = school 
    user.first_name = "Jordan"
    user.last_name = "Jenkins"
    user.save.should eq(false)
  end

  it "can be saved with all required fields entered" do
    user = User.new
    user.email = "test@test.com"
    user.password = "password"
    school = School.new 
    school.name = "The Test School"
    school.save
    user.school = school 
    user.first_name = "Jordan"
    user.last_name = "Jenkins"
    user.save.should eq(true)
  end
end