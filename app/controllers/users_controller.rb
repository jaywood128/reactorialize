class UsersController < ApplicationController
   before_action :authenticate_user!
   

   def show
       if current_user.id.to_s == params[:id]
           render json: current_user
       else
           render json: {error: "You can only look at your data!"}
       end 
   end 
   


   private

   def user_params
     params.require(:user).permit(:username, :email, :password, :bio, :image)
   end
end
