require 'spec_helper'

describe "forwardings/new" do
  before(:each) do
    assign(:forwarding, stub_model(Forwarding,
      :source => "MyString",
      :destination => "MyText"
    ).as_new_record)
  end

  it "renders new forwarding form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forwardings_path, :method => "post" do
      assert_select "input#forwarding_source", :name => "forwarding[source]"
      assert_select "textarea#forwarding_destination", :name => "forwarding[destination]"
    end
  end
end
