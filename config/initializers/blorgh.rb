
  # The secret key used by Devise. Devise uses this key to generate
  # random tokens. Changing this key will render invalid all existing
  # confirmation, reset password and unlock tokens in the database.


Blorgh.setup do |config|

  config.secret_key = "application1"

  config.mailer_sender = 'admin@application1.com'

end
