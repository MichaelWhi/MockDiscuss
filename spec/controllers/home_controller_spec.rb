require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "should display the recent mocks" do
      mock = FactoryGirl.create(:mock)
      get 'index'
      expect(assigns(:mocks)).to include(mock)
    end
  end

end
