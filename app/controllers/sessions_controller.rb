class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(paramas[:session[:password]])
    else
      flash.now[:denger] = "ログイン失敗"
      render 'new'
    end
  end

  def destroy
  end
end
