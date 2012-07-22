require 'spec_helper'

describe "media/edit" do
  before(:each) do
    @medium = assign(:medium, stub_model(Medium,
      :title => "MyString",
      :description => "MyString",
      :value => 1.5
    ))
  end

  it "renders the edit medium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_path(@medium), :method => "post" do
      assert_select "input#medium_title", :name => "medium[title]"
      assert_select "input#medium_description", :name => "medium[description]"
      assert_select "input#medium_value", :name => "medium[value]"
    end
  end
end
