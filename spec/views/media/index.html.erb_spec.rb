require 'spec_helper'

describe "media/index" do
  before(:each) do
    assign(:media, [
      stub_model(Medium,
        :title => "Title",
        :description => "Description",
        :value => 1.5
      ),
      stub_model(Medium,
        :title => "Title",
        :description => "Description",
        :value => 1.5
      )
    ])
  end

  it "renders a list of media" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
