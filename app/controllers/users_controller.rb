class UsersController < ApplicationController
   before_action :authenticate_user!

   def show
     @user = User.find(params[:id])
     @answers = @user.questions_with_answers
   end


   private

   def user_params
     params.require(:user).permit(:email, :id)
   end

 end
