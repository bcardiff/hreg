require 'spec_helper'

describe "patients/index" do
  before(:each) do
    assign(:patients, [
      stub_model(Patient,
        :first_name => "First Name",
        :last_name => "Last Name",
        :code => "Code"
      ),
      stub_model(Patient,
        :first_name => "First Name",
        :last_name => "Last Name",
        :code => "Code"
      )
    ])
  end

  it "renders a list of patients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
