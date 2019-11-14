class ApplicationController < ActionController::API
  # before_action :underscore_params!
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  # end

  # def authenticate_user
  #   if request.headers['Authorization'].present?
  #     authenticate_or_request_with_http_token do |token|
  #       begin
  #         jwt_payload = JWT.decode(token, Rails.application.secrets.secret_key_base).first

  #         @current_user_id = jwt_payload['id']
  #       rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
  #         head :unauthorized
  #       end
  #     end
  #   end
  # end
  include ActionController::MimeResponds

  def render_resource(resource)
      if resource.errors.empty?
      render json: resource
      else
      validation_error(resource)
      end
  end

  def validation_error(resource)
      render json: {
      errors: [
          {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
          }
      ]
      }, status: :bad_request
  end
end
