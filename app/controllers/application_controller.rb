class ApplicationController < ActionController::Base
  private
  def initialize_ab_test
    @ab_test = ab_test(:home_page_test, 'default', 'variant')
  end
end
