class Users::SessionsController < Devise::SessionsController
  include RackSessionsFix

  private

  def respond_with(_current_user, _opts = {})
    render 'users/sessions/session_success', status: :ok
  end

  def respond_to_on_destroy
    if current_user
      render 'users/sessions/session_destroy', status: :ok
    else
      render 'users/sessions/session_destroy_errors', status: :unauthorized
    end
  end
end
