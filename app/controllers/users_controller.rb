class UsersController < ApplicationController
    def show
        @tweets=Tweet.where(user_id: current_user.id).order(updated_at: "DESC").page(params[:page]).per(5)
        @nickname=current_user.nickname
    end
end