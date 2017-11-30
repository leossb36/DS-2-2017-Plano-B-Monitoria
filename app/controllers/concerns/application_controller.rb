class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def admin?
    self.is_admin == true
  end
end
