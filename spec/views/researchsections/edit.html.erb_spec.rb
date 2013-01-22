require 'spec_helper'

describe "researchsections/edit" do
  before(:each) do
    @researchsection = assign(:researchsection, stub_model(Researchsection,
      :content => "MyString",
      :videolink => "MyString",
      :experiment_id => 1
    ))
  end

  it "renders the edit researchsection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => researchsections_path(@researchsection), :method => "post" do
      assert_select "input#researchsection_content", :name => "researchsection[content]"
      assert_select "input#researchsection_videolink", :name => "researchsection[videolink]"
      assert_select "input#researchsection_experiment_id", :name => "researchsection[experiment_id]"
    end
  end
end
