class User < ApplicationRecord
  def facebook_username
    info = facebook_auth.auth_info.info
    # ログに変数info.nameの値を出力する
    logger.debug "[DEBUG] info.name : #{info.name}"
    info.name
  end
end
