require 'spec_helper'

describe GuitarsController do
  describe "GET 'home'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  it "should have title 'Guitar Tracker'" do
    visit root_path
    page.has_title?("Guitar Tracker")
  end



end

