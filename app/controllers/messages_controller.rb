class MessagesController < ApplicationController
  before_action :set_denounce, only: %i[new create]

  def new
    @message = @denounce.messages.new
  end

  def create
    @message = @denounce.messages.create!(message_params)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @denounce }
    end
  end

  private

  def set_denounce
    @denounce = Denounce.find(params[:denounce_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
