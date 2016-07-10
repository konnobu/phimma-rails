class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:student_number])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admission_year])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:self_introduction])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:faculty_id])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:department_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:student_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:admission_year])
    devise_parameter_sanitizer.permit(:account_update, keys: [:self_introduction])
    devise_parameter_sanitizer.permit(:account_update, keys: [:faculty_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:department_id])
  end
end
