require "spec_helper"

describe ReimbursementsController do
  describe "routing" do

    it "routes to #index" do
      get("/reimbursements").should route_to("reimbursements#index")
    end

    it "routes to #new" do
      get("/reimbursements/new").should route_to("reimbursements#new")
    end

    it "routes to #show" do
      get("/reimbursements/1").should route_to("reimbursements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reimbursements/1/edit").should route_to("reimbursements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reimbursements").should route_to("reimbursements#create")
    end

    it "routes to #update" do
      put("/reimbursements/1").should route_to("reimbursements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reimbursements/1").should route_to("reimbursements#destroy", :id => "1")
    end

  end
end
