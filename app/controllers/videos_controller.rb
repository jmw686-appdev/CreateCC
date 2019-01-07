class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params.fetch("id"))
  end

  def create
    video = params.fetch("video")
    subtitle = Subtitle.create(user_id: video.fetch("user_id"))
    new_video = Video.create(source: video.fetch("source"), user_id: video.fetch("user_id"), subtitle_id: subtitle.id)
    if new_video.save

      redirect_to videos_path, notice: "Successfully Added Video"
    else
      render "new", notice: "nope"
    end

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def delete

  end

end
