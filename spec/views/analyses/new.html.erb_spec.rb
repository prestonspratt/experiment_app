require 'spec_helper'

describe "analyses/new" do
  before(:each) do
    assign(:analysis, stub_model(Analysis,
      :content => "MyString",
      :experiment_id => 1
    ).as_new_record)
  end

  it "renders new analysis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => analyses_path, :method => "post" do
      assert_select "input#analysis_content", :name => "analysis[content]"
      assert_select "input#analysis_experiment_id", :name => "analysis[experiment_id]"
    end
  end
end
