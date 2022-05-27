class Api::V1::SessionsController < ApplicationController
  def login
    admin = Admin.find_by!(email: params[:email])
    if admin.valid_password? params[:password]
      render json: admin, status: :ok
    else
      head(:unauthorized)
    end
  rescue StandardError => e
    render json: {message: e.message}, status: :not_found
  end

  def logout
    #vamos implementar depois
  end
end
