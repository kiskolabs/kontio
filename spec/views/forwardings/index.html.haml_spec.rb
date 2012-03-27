require 'spec_helper'

describe "forwardings/index" do
  before(:each) do
    assign(:forwardings, [
      stub_model(Forwarding,
        :source => "Source",
        :destination => "MyText"
      ),
      stub_model(Forwarding,
        :source => "Source",
        :destination => "MyText"
      )
    ])
  end

  it "renders a list of forwardings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
