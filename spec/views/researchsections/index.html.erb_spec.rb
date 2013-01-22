require 'spec_helper'

describe "researchsections/index" do
  before(:each) do
    assign(:researchsections, [
      stub_model(Researchsection,
        :content => "Content",
        :videolink => "Videolink",
        :experiment_id => 1
      ),
      stub_model(Researchsection,
        :content => "Content",
        :videolink => "Videolink",
        :experiment_id => 1
      )
    ])
  end

  it "renders a list of researchsections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Videolink".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
