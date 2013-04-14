class HomeController < ApplicationController
  def index
    @mocks = (user_signed_in? ? Mock.recent(5) : [])
  end
end
