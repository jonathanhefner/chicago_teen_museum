class ApplicationController < ActionController::Base
  include Clearance::Authentication
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    if signed_in?
      raise
    else
      authorize # via Clearance (think of as `authenticate`)
    end
  end
end