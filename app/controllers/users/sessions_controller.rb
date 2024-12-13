# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def create
    user = User.find_by(email: params[:email])

    if user && user.valid_password?(params[:password])
      if user.expires_at && user.expires_at > Time.now
        sign_in(user)
        render json: { message: "Login successful", user: UserSerializer.new(user).serializable_hash }, status: :ok
      else
        render json: { error: "Account has expired. Please renew your subscription." }, status: :unauthorized
      end
    else
      render json: { error: "Invalid email or password." }, status: :unauthorized
    end
  end
end
