require 'spec_helper'

describe "procedures/show" do
  before(:each) do
    @procedure = assign(:procedure, stub_model(Procedure,
      :directions => "Directions",
      :eperiment_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Directions/)
    rendered.should match(/1/)
  end
end
