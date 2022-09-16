class UsersController < ApplicationController
  
  before_action :is_admin?

  def home

  end

  def is_admin?
    redirect_to root_path unless current_user.admin?
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
