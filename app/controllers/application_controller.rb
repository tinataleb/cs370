class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :sid, :privilege, :email, :birthdate, :gender, :ethnicity,
                                  :major, :dsp, :transfer, :year, :pronoun])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :sid, :privilege, :email, :birthdate, :gender, :ethnicity,
                                                       :major, :dsp, :transfer, :year, :pronoun])
  end

  def after_sign_in_path_for(resource)
  # return the path based on resource
    login_with_tutee_path(current_tutee)
  end

  def after_sign_out_path_for(resource)
    new_tutee_session_path
  end
  private
    def check_tutee_logged_in
      tutee_id = params.has_key?(:tutee_id) ? params[:tutee_id] : -1
      if tutee_id == -1 and params.has_key?(:id)
        tutee_id = params[:id]
      end

      if !(session[:tutee_id].to_i == tutee_id.to_i)
        redirect_to new_tutee_session_path
      end
    end
end
