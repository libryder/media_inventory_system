require 'spec_helper'

describe "media/new" do
  before(:each) do
    assign(:medium, stub_model(Medium,
      :title => "MyString",
      :description => "MyString",
      :value => 1.5
    ).as_new_record)
  end

  it "renders new medium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_path, :method => "post" do
      assert_select "input#medium_title", :name => "medium[title]"
      assert_select "input#medium_description", :name => "medium[description]"
      assert_select "input#medium_value", :name => "medium[value]"
    end
  end
end
