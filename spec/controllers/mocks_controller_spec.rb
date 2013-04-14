require 'spec_helper'

describe MocksController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'my'" do
    it "displays all user-owned mocks" do
      get 'my'
      assigns(:mocks).should have(current_user.mocks).items
    end
  end
end
