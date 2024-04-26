class AuthorsController < ApplicationController
  def index
    render json: Book.all
  end
end
