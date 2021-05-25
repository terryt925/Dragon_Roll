class Api::BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find_by(id: params[:id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      render :index
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  #   def create
  #   @event = Event.new(event_params)
  #   if @event.save
  #     render :show
  #   else
  #     render json: @event.errors.full_messages, status: 422
  #   end
  # end

  def update
    @bookmark = Bookmark.find_by(id: params[:id])
    if @bookmark.update(bookmark_params)
      render :index
    else
      render json: @bookmark.errors.full_messages, status: 422
    end
  end

  # def update
  #   @event = Event.find_by(id: params[:id])
  #   if @event.update(event_params)
  #     render :show
  #   else
  #     render json: @event.errors.full_messages, status: 422
  #   end
  # end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    
    render :index
  end

  # def destroy
  #   @event = Event.find(params[:id])
  #   @event.destroy

  #   render :show
  # end
 
  def bookmark_params 
    params.require(:bookmark).permit(:user_id, :anime_id)
  end

end
