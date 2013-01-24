require 'spec_helper'

describe "analyses/edit" do
  before(:each) do
    @analysis = assign(:analysis, stub_model(Analysis,
      :content => "MyString",
      :experiment_id => 1
    ))
  end

  it "renders the edit analysis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => analyses_path(@analysis), :method => "post" do
      assert_select "input#analysis_content", :name => "analysis[content]"
      assert_select "input#analysis_experiment_id", :name => "analysis[experiment_id]"
    end
  end
end
