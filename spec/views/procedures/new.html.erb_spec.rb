require 'spec_helper'

describe "procedures/new" do
  before(:each) do
    assign(:procedure, stub_model(Procedure,
      :directions => "MyString",
      :eperiment_id => 1
    ).as_new_record)
  end

  it "renders new procedure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => procedures_path, :method => "post" do
      assert_select "input#procedure_directions", :name => "procedure[directions]"
      assert_select "input#procedure_eperiment_id", :name => "procedure[eperiment_id]"
    end
  end
end
