require 'spec_helper'

describe "my_records/edit" do
  before(:each) do
    @my_record = assign(:my_record, stub_model(MyRecord,
      :name => "MyString"
    ))
  end

  it "renders the edit my_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => my_records_path(@my_record), :method => "post" do
      assert_select "input#my_record_name", :name => "my_record[name]"
    end
  end
end
