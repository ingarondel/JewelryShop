class Api::V1::HomeController < ActionController::Base
def index
    render json: { current_api_token: current_api_token.id, current_user: current_user.email }
end
end