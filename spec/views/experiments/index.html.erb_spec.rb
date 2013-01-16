require 'spec_helper'

describe "experiments/index" do
  before(:each) do
    assign(:experiments, [
      stub_model(Experiment,
        :title => "Title",
        :description => "Description",
        :purpose => "Purpose"
      ),
      stub_model(Experiment,
        :title => "Title",
        :description => "Description",
        :purpose => "Purpose"
      )
    ])
  end

  it "renders a list of experiments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Purpose".to_s, :count => 2
  end
end
