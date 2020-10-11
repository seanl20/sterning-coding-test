require "rails_helper"

RSpec.describe UserAffiliationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_affiliations").to route_to("user_affiliations#index")
    end

    it "routes to #new" do
      expect(get: "/user_affiliations/new").to route_to("user_affiliations#new")
    end

    it "routes to #show" do
      expect(get: "/user_affiliations/1").to route_to("user_affiliations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_affiliations/1/edit").to route_to("user_affiliations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_affiliations").to route_to("user_affiliations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_affiliations/1").to route_to("user_affiliations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_affiliations/1").to route_to("user_affiliations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_affiliations/1").to route_to("user_affiliations#destroy", id: "1")
    end
  end
end
