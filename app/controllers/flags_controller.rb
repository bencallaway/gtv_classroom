class FlagsController < ApplicationController
	def index
    @count = Flag.count
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
