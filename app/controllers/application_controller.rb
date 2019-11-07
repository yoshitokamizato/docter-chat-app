class ApplicationController < ActionController::Base
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
  end
end
