class ApplicationController < ActionController::Base
  protect_from_forgery

## Redirection to orders controller on successful log in
  def after_sign_in_path_for(resource_or_scope)
      orders_path
  end

end
