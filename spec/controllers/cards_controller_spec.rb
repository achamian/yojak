require File.dirname(__FILE__) + '/../spec_helper'

describe CardsController do
  describe "NEW" do
    it "should populate available card status for a project" do
      project = Project.create!(:name => "Test Project")
      project.card_statuses.create(:status => "New")
      get :new, :project_id => project.id
      response.should be_success
      assigns[:card_statuses].should == project.card_statuses
    end
  end

  describe "EDIT" do
    it "should populate available card status for a project" do
      project = Project.create!(:name => "Test Project")
      project.card_statuses.create(:status => "New")
      card = Card.create!(:title => "Test Card", :project => project)
      get :edit, :id => card.id, :project_id => project.id
      response.should be_success
      assigns[:card_statuses].should == project.card_statuses
    end
  end
end
