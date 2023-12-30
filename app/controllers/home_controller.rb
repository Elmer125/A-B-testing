class HomeController < ApplicationController
  before_action :initialize_ab_test

  def index

  end

  def change_ab_test
    ab_finished(:home_page_test)
    redirect_to root_path
  end
end