class UserController < ApplicationController
  def read
    @id = params[:user_id]

    @user = User.find(@id) rescue nil  #<<------ @id is text

  end
end
