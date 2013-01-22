require 'spec_helper'

describe "hypotheses/show" do
  before(:each) do
    @hypothesis = assign(:hypothesis, stub_model(Hypothesis,
      :content => "Content",
      :experiment_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
