require 'spec_helper'

describe "steps/new" do
  before(:each) do
    assign(:step, stub_model(Step,
      :content => "MyString",
      :videolink => "MyString",
      :procedure_id => 1
    ).as_new_record)
  end

  it "renders new step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => steps_path, :method => "post" do
      assert_select "input#step_content", :name => "step[content]"
      assert_select "input#step_videolink", :name => "step[videolink]"
      assert_select "input#step_procedure_id", :name => "step[procedure_id]"
    end
  end
end
