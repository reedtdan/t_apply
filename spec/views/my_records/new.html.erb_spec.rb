require 'spec_helper'

describe "my_records/new" do
  before(:each) do
    assign(:my_record, stub_model(MyRecord,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new my_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => my_records_path, :method => "post" do
      assert_select "input#my_record_name", :name => "my_record[name]"
    end
  end
end
