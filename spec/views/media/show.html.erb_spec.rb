require 'spec_helper'

describe "media/show" do
  before(:each) do
    @medium = assign(:medium, stub_model(Medium,
      :title => "Title",
      :description => "Description",
      :value => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/1.5/)
  end
end
