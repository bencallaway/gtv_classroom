class AnswersController < ApplicationController
  respond_to :json

	def index
    render json: Answer.all
	end

  def create
    Answer.create params.slice(:value)
    head :no_content
  end

  def reset
    Answer.destroy_all
    redirect_to :action => :index
  end
end
