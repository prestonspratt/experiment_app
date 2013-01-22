require "spec_helper"

describe ResearchsectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/researchsections").should route_to("researchsections#index")
    end

    it "routes to #new" do
      get("/researchsections/new").should route_to("researchsections#new")
    end

    it "routes to #show" do
      get("/researchsections/1").should route_to("researchsections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/researchsections/1/edit").should route_to("researchsections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/researchsections").should route_to("researchsections#create")
    end

    it "routes to #update" do
      put("/researchsections/1").should route_to("researchsections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/researchsections/1").should route_to("researchsections#destroy", :id => "1")
    end

  end
end
