class UsersController < ApplicationController
  def home

  end

  def index
     @users=User.all
  end
  
  def show

  end

  def new

  end

  def edit

  end
end
