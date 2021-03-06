class UsersController < ApplicationController
   before_action :authenticate_user!

   def show
     @user = User.find(params[:id])
     @answers = @user.answers
     @departments = @departments
   end


   private

   def user_params
     params.require(:user).permit(:email, :id, {:department => [:id]})
   end

 end
