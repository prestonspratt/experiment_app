require 'spec_helper'

describe "hypotheses/new" do
  before(:each) do
    assign(:hypothesis, stub_model(Hypothesis,
      :content => "MyString",
      :experiment_id => 1
    ).as_new_record)
  end

  it "renders new hypothesis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hypotheses_path, :method => "post" do
      assert_select "input#hypothesis_content", :name => "hypothesis[content]"
      assert_select "input#hypothesis_experiment_id", :name => "hypothesis[experiment_id]"
    end
  end
end
