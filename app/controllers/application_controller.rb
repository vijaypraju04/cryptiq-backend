class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def issue_token(payload)
  JWT.encode(payload, 'e45c98dcea1d369dab4a7fac9fe863c2c0e95237bdc8352c5ddd47fe9f0bd9e53f318e2bc9c587a40b3e303760a03e3a6c2f867e452aff260d6f49efa7766b1f', "HS256")
  end
end
