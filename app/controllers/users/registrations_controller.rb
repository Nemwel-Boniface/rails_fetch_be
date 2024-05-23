# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  include RackSessionsFix
  private

  def respond_with(current_user, _opts = {})
    if resource.persisted?
      render "users/registrations/registration_success", status: :ok
    else
      render json: {
        errors: current_user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end
end
