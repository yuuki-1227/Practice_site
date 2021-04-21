class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @article = @user.articles.all
  end

  def edit
   @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:profile_image, :name)
  end
end
