class UsersController < ApplicationController
   before_action :authenticate_user!

   def show
     @user = User.find(params[:id])
     @user = User.includes(:questions, :answers)
   end


   private
   def user_params
     params.require(:user).permit(:email)
   end

 end
