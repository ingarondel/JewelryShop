class TokensController < ApplicationController
  def new
  end

  def generate_token
    api_token = current_user.api_tokens.create!

    @jwt_token = api_token.token

    respond_to do |format|
      format.html { render :new } 
    end
  end
end