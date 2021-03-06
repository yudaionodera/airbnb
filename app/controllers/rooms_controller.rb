class RoomsController < ApplicationController
  def index
    @room = current_user.rooms
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def edit
  end

  def show
    @room = Room.find(params[:id])
  end

  def create
   Room.create(room_params)
   # binding.pry
   redirect_to root_path, notice: "部屋を登録しました。"
  end

  def update  #ここもいらないかも。
    @group =Group.find(params[:id])
  end

  def destroy  #ここøいらないかも。画面遷移しないから。
  end

  private
  def room_params
    params.require(:room).permit(:name, :image,:text, :country, :price).merge(user_id: current_user.id)
  end

end
