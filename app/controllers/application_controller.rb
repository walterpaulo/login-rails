class ApplicationController < ActionController::Base
  before_action  :authenticate_user!

  def authenticate_user!
    return if request.path_parameters[:format] == 'json'

    if cookies[:home_adm].blank?
      redirect_to "/login"
    end
  end
end
