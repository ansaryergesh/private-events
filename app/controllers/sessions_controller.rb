# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Wrong Name'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
