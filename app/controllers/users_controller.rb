class UsersController < ApplicationController

  expose(:user)

  def show
    @reviews = user.reviews.order('created_at DESC').limit(5)
  end
end