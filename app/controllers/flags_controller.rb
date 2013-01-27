class FlagsController < ApplicationController
	def index
    respond_to do |format|
      format.json { render json: Flag.all }
      format.html do
        @count = Flag.count
        @red_count = Answer.where(value: 'red').count
        @green_count = Answer.where(value: 'green').count
        @blue_count = Answer.where(value: 'blue').count
        @yellow_count = Answer.where(value: 'yellow').count
      end
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
