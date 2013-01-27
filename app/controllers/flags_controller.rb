class FlagsController < ApplicationController
	def index
	end

  def new
    @flag = Flag.new
  end

  def create
    Flag.create
    flash[:notice] = 'You flagged this video'
    redirect_to :action => :new
  end
end
