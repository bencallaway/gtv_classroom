class FlagsController < ApplicationController
	def index
    @count = Flag.count
	end

  def new
    @flag = Flag.new
  end

  def create
    Flag.create

    redirect_to :action => :new
  end

  def reset
    Flag.destroy_all
    redirect_to :action => :index
  end
end
