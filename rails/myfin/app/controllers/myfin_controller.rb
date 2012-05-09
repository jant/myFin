class MyfinController < ApplicationController
  def index
    @accounts = Account.all
    @categories = Category.all
  end
end
