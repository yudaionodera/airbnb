class RoomController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
  end

  def edit
  end

  def show
  end

  def create
   @room
 end
  def update  #ここもいらないかも。
  end

  def destroy  #ここøいらないかも。画面遷移しないから。
  end



end
