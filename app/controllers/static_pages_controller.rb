class StaticPagesController < ApplicationController
  respond_to :html

  def home
    @devs = Developer.all
    @request = Request.new
  end
end
