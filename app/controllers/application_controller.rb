# frozen_string_literal: true

# rubocop:disable all
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # after_filter :store_location

  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def configure_permitted_parameters
    # For more fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :owner, :photo])

    # For more fields in app/views/devise/regiestrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :photo, :email])
  end

  def default_url_options
    { host: ENV["PRODUCTION_URL"] || "localhost:3000"}
  end

  # def after_sign_in_path_for(resource)
  #   session[:previous_url] || root_path
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  # def store_location
  # # store last url as long as it isn't a /users path
  #   session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  # end

end
