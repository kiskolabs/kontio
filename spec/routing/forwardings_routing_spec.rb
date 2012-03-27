require "spec_helper"

describe ForwardingsController do
  describe "routing" do

    it "routes to #index" do
      get("/forwardings").should route_to("forwardings#index")
    end

    it "routes to #new" do
      get("/forwardings/new").should route_to("forwardings#new")
    end

    it "routes to #show" do
      get("/forwardings/1").should route_to("forwardings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forwardings/1/edit").should route_to("forwardings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forwardings").should route_to("forwardings#create")
    end

    it "routes to #update" do
      put("/forwardings/1").should route_to("forwardings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forwardings/1").should route_to("forwardings#destroy", :id => "1")
    end

  end
end
