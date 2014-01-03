require 'spec_helper'

describe "abcs/new" do
  before(:each) do
    assign(:abc, stub_model(Abc,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new abc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", abcs_path, "post" do
      assert_select "input#abc_name[name=?]", "abc[name]"
      assert_select "input#abc_email[name=?]", "abc[email]"
    end
  end
end
