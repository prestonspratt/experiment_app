require 'spec_helper'

describe "procedures/edit" do
  before(:each) do
    @procedure = assign(:procedure, stub_model(Procedure,
      :directions => "MyString",
      :eperiment_id => 1
    ))
  end

  it "renders the edit procedure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => procedures_path(@procedure), :method => "post" do
      assert_select "input#procedure_directions", :name => "procedure[directions]"
      assert_select "input#procedure_eperiment_id", :name => "procedure[eperiment_id]"
    end
  end
end
