class UsersController < ApplicationController
def index
  @users = User.all

  render("users/index.html.erb")
end

def show
  @user = User.find(params[:id])
  @product = Product.new
  render("users/show.html.erb")
end
end
