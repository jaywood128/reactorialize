class RegistrationsController < Devise::SessionsController
  respond_to :json 
  
    def create
      build_resource(sign_up_params)
      resource.save

      render_resource(resource)
    end

    def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation, :username, :weight_unit, :preference_ids => [])
    end
end
