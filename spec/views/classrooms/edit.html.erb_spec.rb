require 'spec_helper'

describe "classrooms/edit" do
  before(:each) do
    @classroom = assign(:classroom, stub_model(Classroom))
  end

  it "renders the edit classroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do
    end
  end
end
