require 'spec_helper'

describe "abcs/edit" do
  before(:each) do
    @abc = assign(:abc, stub_model(Abc,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit abc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", abc_path(@abc), "post" do
      assert_select "input#abc_name[name=?]", "abc[name]"
      assert_select "input#abc_email[name=?]", "abc[email]"
    end
  end
end
