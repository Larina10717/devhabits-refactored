class SessionsController < Devise::SessionsController
  skip_filter :verify_signed_out_user, only: :destroy
  prepend_before_filter :require_no_authentication, only: [:cancel ]
end
