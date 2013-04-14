class MocksController < ApplicationController
  respond_to :html, :json
  
  before_filter :authenticate_user!
  
  def index
    @mocks = Mock.order("created_at desc")
  end
  
  def my
    @mocks = current_user.mocks.order("created_at desc")
  end

  def new
  end

  def edit
  end
  
  def show
    @mock = Mock.find(params[:id])
    @comments = @mock.comments
  end
  
  def create
    @mock = current_user.mocks.create(params[:mock])
  end
  
  def update
    @mock = Mock.find(params[:id])
    @mock.update_attributes(params[:mock]) if @mock.user == current_user
    respond_with @mock
  end
  
  def destroy
    @mock = Mock.find(params[:id])
    if @mock.user == current_user
      @mock.delete
      redirect_to mocks_path
    else
      redirect_to @mock
    end
  end
  
  def comment
    @mock = Mock.find(params[:id])
    @comment = @mock.comments.create(comment: params[:comment][:comment], user_id: current_user.id)
  end
  
end
