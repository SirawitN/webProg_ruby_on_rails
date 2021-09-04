class PostController < ApplicationController
  def create

    inp_msg = params[:msg]
    inp_user_id = params[:user_id]

    user = User.find(inp_user_id) rescue nil 

    if user == nil
      flash[:alert] = "Couldn't create a post with the given user_id = #{inp_user_id} !!"
    else 
      @post = Post.create(user_id: user.id, msg: inp_msg)
    end

  end
end
