require 'spec_helper'

describe "researchsections/show" do
  before(:each) do
    @researchsection = assign(:researchsection, stub_model(Researchsection,
      :content => "Content",
      :videolink => "Videolink",
      :experiment_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/Videolink/)
    rendered.should match(/1/)
  end
end
