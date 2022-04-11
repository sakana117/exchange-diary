class ApplicationController < ActionController::Base
  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER_DIARY"] && password == ENV["BASIC_AUTH_PASSWORD_DIARY"]
    end
  end
end
