require 'spec_helper'

describe "experiments/new" do
  before(:each) do
    assign(:experiment, stub_model(Experiment,
      :title => "MyString",
      :description => "MyString",
      :purpose => "MyString"
    ).as_new_record)
  end

  it "renders new experiment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => experiments_path, :method => "post" do
      assert_select "input#experiment_title", :name => "experiment[title]"
      assert_select "input#experiment_description", :name => "experiment[description]"
      assert_select "input#experiment_purpose", :name => "experiment[purpose]"
    end
  end
end
