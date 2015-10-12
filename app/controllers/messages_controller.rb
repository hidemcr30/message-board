class MessagesController < ApplicationController
  def index
    #メッセージを全て取得
    @messages = Message.all
  end

  ## ここから追記
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end

  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  ## ここまで
end
