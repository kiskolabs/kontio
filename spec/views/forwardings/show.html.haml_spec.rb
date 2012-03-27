require 'spec_helper'

describe "forwardings/show" do
  before(:each) do
    @forwarding = assign(:forwarding, stub_model(Forwarding,
      :source => "Source",
      :destination => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Source/)
    rendered.should match(/MyText/)
  end
end
