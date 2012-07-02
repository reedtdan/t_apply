require 'spec_helper'

describe "my_records/index" do
  before(:each) do
    assign(:my_records, [
      stub_model(MyRecord,
        :name => "Name"
      ),
      stub_model(MyRecord,
        :name => "Name"
      )
    ])
  end

  it "renders a list of my_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
