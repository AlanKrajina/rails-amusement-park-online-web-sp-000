class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to @user
        else
            redirect_to '/'
        end
    end


  private

    def user_params
      params.require(:user).permit(:name, :tickets, :happiness, :nausea, :height, :password, :admin)
    end

end
