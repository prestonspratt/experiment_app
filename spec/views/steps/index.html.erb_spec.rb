require 'spec_helper'

describe "steps/index" do
  before(:each) do
    assign(:steps, [
      stub_model(Step,
        :content => "Content",
        :videolink => "Videolink",
        :procedure_id => 1
      ),
      stub_model(Step,
        :content => "Content",
        :videolink => "Videolink",
        :procedure_id => 1
      )
    ])
  end

  it "renders a list of steps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Videolink".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
