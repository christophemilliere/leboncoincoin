require "rails_helper"

RSpec.describe AnnoncesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/annonces").to route_to("annonces#index")
    end

    it "routes to #new" do
      expect(:get => "/annonces/new").to route_to("annonces#new")
    end

    it "routes to #show" do
      expect(:get => "/annonces/1").to route_to("annonces#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/annonces/1/edit").to route_to("annonces#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/annonces").to route_to("annonces#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/annonces/1").to route_to("annonces#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/annonces/1").to route_to("annonces#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/annonces/1").to route_to("annonces#destroy", :id => "1")
    end

  end
end
