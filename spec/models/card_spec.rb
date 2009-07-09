require File.dirname(__FILE__) + '/../spec_helper'

describe Card do
  describe "validation" do
    it "should fail if it has no title" do
      card = Card.new
      card.should_not be_valid
      card.should have(1).error_on(:title)
    end
  end
end
