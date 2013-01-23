require 'spec_helper'

describe "procedures/index" do
  before(:each) do
    assign(:procedures, [
      stub_model(Procedure,
        :directions => "Directions",
        :eperiment_id => 1
      ),
      stub_model(Procedure,
        :directions => "Directions",
        :eperiment_id => 1
      )
    ])
  end

  it "renders a list of procedures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Directions".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
