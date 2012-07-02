require 'spec_helper'

describe "my_records/show" do
  before(:each) do
    @my_record = assign(:my_record, stub_model(MyRecord,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
