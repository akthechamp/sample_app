require 'spec_helper'

describe "abcs/index" do
  before(:each) do
    assign(:abcs, [
      stub_model(Abc,
        :name => "Name",
        :email => "Email"
      ),
      stub_model(Abc,
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of abcs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
