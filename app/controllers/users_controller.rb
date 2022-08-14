class UsersController < ApplicationController
  def create
    user = User.new email: "rickey.gong@foxmail.com", name: "rickey.gong"
    if user.save
      p "save 成功了"
      render json: user
    else
      p "save 失败了"
      render json: user.errors
    end
  end

  def show
    user = User.find_by_id params[:id]
    if user
      render json: user
    else
      head 404
    end
  end
end
