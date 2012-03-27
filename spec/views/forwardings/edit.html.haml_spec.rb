require 'spec_helper'

describe "forwardings/edit" do
  before(:each) do
    @forwarding = assign(:forwarding, stub_model(Forwarding,
      :source => "MyString",
      :destination => "MyText"
    ))
  end

  it "renders the edit forwarding form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forwardings_path(@forwarding), :method => "post" do
      assert_select "input#forwarding_source", :name => "forwarding[source]"
      assert_select "textarea#forwarding_destination", :name => "forwarding[destination]"
    end
  end
end
