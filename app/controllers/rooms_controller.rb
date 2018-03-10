class RoomsController < ApplicationController
  def index
    @room = current_user.rooms
  end

  def new
    @room = Room.new
  end

  def edit
  end

  def show
    @rooms = Room.all
  end

  def create
   Room.create(room_params)
   redirect_to root_path, notice: "部屋を登録しました。"
  end

  def update  #ここもいらないかも。
    @group =Group.find(params[:id])
  end

  def destroy  #ここøいらないかも。画面遷移しないから。
  end

  private
  def room_params
    params.require(:room).permit(:name, :image,:country, :price).merge(user_id: params[:uesr_id])
  end

end
