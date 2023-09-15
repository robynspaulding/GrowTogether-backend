class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      jwt = issue_jwt(user) # Issue a JWT token for the newly registered user
      render json: { message: "User created successfully", jwt: jwt }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  private def user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation,
      :profilePicURL
    )
  end

  private def issue_jwt(user)
    jwt_payload = {
      user_id: user.id, # the data to encode
      exp: 24.hours.from_now.to_i # the expiration time
    }
    JWT.encode(jwt_payload, Rails.application.credentials.fetch(:secret_key_base), "HS256")
  end

end
