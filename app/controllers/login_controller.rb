class LoginController < ApplicationController
    skip_before_action :authenticate_user!
    def index;end


  def logar
    user = Administrator.where(email: params["login"]["email"], password: params["login"]["password"])
    if user.present?
      time = params["login"]["lembrar"] == "1" ? 1.year.from_now : 30.minutes.from_now
      user = user.first
      value = {
        id: user.id,
        nome: user.name,
        email: user.email
      }
      cookies[:home_adm] = { value: value.to_json, expires: time, httponly: true }

      redirect_to root_path
    else
      flash[:erro] = "Email ou senha inválidos"
      redirect_to login_path
    end
  end

  def logout
    cookies[:home_adm] = nil
    redirect_to login_path
  end
end
