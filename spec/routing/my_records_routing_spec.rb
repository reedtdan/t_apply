require "spec_helper"

describe MyRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/my_records").should route_to("my_records#index")
    end

    it "routes to #new" do
      get("/my_records/new").should route_to("my_records#new")
    end

    it "routes to #show" do
      get("/my_records/1").should route_to("my_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/my_records/1/edit").should route_to("my_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/my_records").should route_to("my_records#create")
    end

    it "routes to #update" do
      put("/my_records/1").should route_to("my_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/my_records/1").should route_to("my_records#destroy", :id => "1")
    end

  end
end
