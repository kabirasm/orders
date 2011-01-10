class PagesController < ApplicationController
  def home
	@title = "Home"
  end

  def show
       @title = "Welcome"
  end

  def readme
      @title = "Read Me"
  end

end
