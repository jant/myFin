class MyfinController < ApplicationController
  def index
    @accounts = Account.all
  end
end
