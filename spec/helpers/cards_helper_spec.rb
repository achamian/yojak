require File.dirname(__FILE__) + '/../spec_helper'

describe CardsHelper do
  it "should convert card description to html format using RedCloth" do
    helper = Object.new
    helper.extend(CardsHelper)
    RedCloth.should_receive(:new).with(:card_description).and_return(mock('RedCloth', :to_html => :html_description))
    helper.to_html(:card_description).should == :html_description
  end
end
