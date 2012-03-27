require 'spec_helper'

describe "domains/index" do
  before(:each) do
    assign(:domains, [
      stub_model(Domain,
        :domain => "Domain"
      ),
      stub_model(Domain,
        :domain => "Domain"
      )
    ])
  end

  it "renders a list of domains" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Domain".to_s, :count => 2
  end
end
