class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  include Knock::Authenticable
  helper_method :login!, :logged_in?, :current_company, :authorized_company?, :logout!
end
