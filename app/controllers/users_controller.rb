class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create

    @user = User.new({username: params[:user][:username], email: params[:user][:email]})
    # user.new({title: "GA", description: "GA Rocks!", url: "http:ksndkasnd"})

    if @user.save
      redirect_to users_path
      # redirect_to users_path
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.new({username: params[:user][:username], email: params[:user][:email]})
    # user.new({title: "GA", description: "GA Rocks!", url: "http:ksndkasnd"})

    if @user.save
      redirect_to users_path
      # redirect_to users_path
    else
      redirect_to new_user_path
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/'
  end
end
