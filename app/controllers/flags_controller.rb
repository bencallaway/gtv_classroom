class FlagsController < ApplicationController
	def index
    respond_to do |format|
      format.json { render json: Flag.all }
      format.html { @count = Flag.count }
    end
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
