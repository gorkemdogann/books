class WelcomeController < ApplicationController
  def index

    if current_user
      redirect_to books_url
    else
      @books = Book.all
      time = Time.new
      @date = time.strftime("%Y-%m-%d")
      @time = time.strftime("%H:%M-%S")
    end
  end
end
