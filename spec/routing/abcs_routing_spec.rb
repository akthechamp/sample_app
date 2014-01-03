require "spec_helper"

describe AbcsController do
  describe "routing" do

    it "routes to #index" do
      get("/abcs").should route_to("abcs#index")
    end

    it "routes to #new" do
      get("/abcs/new").should route_to("abcs#new")
    end

    it "routes to #show" do
      get("/abcs/1").should route_to("abcs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/abcs/1/edit").should route_to("abcs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/abcs").should route_to("abcs#create")
    end

    it "routes to #update" do
      put("/abcs/1").should route_to("abcs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/abcs/1").should route_to("abcs#destroy", :id => "1")
    end

  end
end
