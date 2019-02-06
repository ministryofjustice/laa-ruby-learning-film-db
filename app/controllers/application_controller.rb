class ApplicationController < ActionController::Base
  include Pundit

  default_form_builder FilmFormBuilder


  protect_from_forgery with: :exception, prepend: true
  before_action :authenticate_user!

  # after_action :verify_authorized
  # after_action :verify_policy_scoped

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  private
  def user_not_authorized(exception, redirect_path = nil)
    policy_name = exception.policy.class.to_s.underscore

    flash[:alert] = "translation for 'pundit.#{policy_name}.#{exception.query}' goes here"
    redirect_to(redirect_path || request.referrer || root_path)
  end


end
