# frozen_string_literal: true

# rubocop:disable all
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def configure_permitted_parameters
    # For more fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :owner])

    # For more fields in app/views/devise/regiestrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
