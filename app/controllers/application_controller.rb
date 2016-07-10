class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters


    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :student_number
    devise_parameter_sanitizer.for(:account_update) << :admission_year
    devise_parameter_sanitizer.for(:account_update) << :student_number
    devise_parameter_sanitizer.for(:account_update) << :self_introduction
    devise_parameter_sanitizer.for(:account_update) << :faculty_id
    devise_parameter_sanitizer.for(:account_update) << :avatar
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :student_number
    devise_parameter_sanitizer.for(:sign_up) << :admission_year
    devise_parameter_sanitizer.for(:sign_up) << :student_number
    devise_parameter_sanitizer.for(:sign_up) << :self_introduction
    devise_parameter_sanitizer.for(:sign_up) << :faculty_id
    devise_parameter_sanitizer.for(:sign_up) << :avatar

    # devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:student_number])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:admission_year])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:self_introduction])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:faculty_id])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
  end
end
