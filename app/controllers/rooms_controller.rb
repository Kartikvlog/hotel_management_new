class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to billings_path	
    else
      render 'new'
    end
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to @room
    else
      render 'edit'
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path
  end

  private
  def room_params
    params.require(:room).permit(:name, :phone, :check_in, :check_out, :number_of_nights, :hotel_id, :user_id)
  end
  
end
