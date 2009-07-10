require File.dirname(__FILE__) + '/../spec_helper'

describe ApplicationHelper do
  
  before(:each) do
    @helper = Object.new.extend(ApplicationHelper)
  end
end
