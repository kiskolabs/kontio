require 'spec_helper'

describe "domains/edit" do
  before(:each) do
    @domain = assign(:domain, stub_model(Domain,
      :domain => "MyString"
    ))
  end

  it "renders the edit domain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => domains_path(@domain), :method => "post" do
      assert_select "input#domain_domain", :name => "domain[domain]"
    end
  end
end
