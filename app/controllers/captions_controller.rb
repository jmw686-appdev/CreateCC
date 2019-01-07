class CaptionsController < ApplicationController

  def index

  end

  def show

  end

  def create
    caption_params = params.fetch("caption")
    caption = Caption.create(subtitle_id: caption_params.fetch("subtitle_id"), caption_order: caption_params.fetch("caption_order"), start_time: caption_params.fetch("start_time"), end_time: caption_params.fetch("end_time"), text: caption_params.fetch("text"), file_type: caption_params.fetch("file_type") )
    if caption.save

      redirect_to video_path(caption.subtitle.video.id), notice: "Successfully Added Caption"
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
