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
    @user = User.new(name: params[:user][:name], DOB: params[:user][:DOB], email: params[:user][:email], phone_number: params[:user][:phone_number], address: params[:user][:address])
    if @user.save
      redirect_to @user, notice: 'user was successfully created.'
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(name: params[:user][:name], DOB: params[:user][:DOB], email: params[:user][:email], phone_number: params[:user][:phone_number], address: params[:user][:address])
      redirect_to @user, notice: 'user was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user = user.find(params[:id])
    @user.destroy
    redirect_to users_url, notice: 'user was successfully destroyed.'
  end

 
end