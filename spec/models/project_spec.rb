require File.dirname(__FILE__) + '/../spec_helper'

describe Project do
  describe "validation" do
    it "should fail if it has no name" do
      project = Project.new
      project.should_not be_valid
      project.should have(1).error_on(:name)
    end
  end
end
