class VideosController < ApplicationController

def index
	@videos = Video.order('created_at DESC')
end

def show
	@video = Video.findparams([:id])
end

def new
	@video = Video.new
end


def create
	@video = Video.new(params.require(:video).permit(:link))
  	if @video.save
    	flash[:success] = 'Video added!'
    	redirect_to videos_path
  	else
    	render 'new'
	end
end


def destroy
end


def edit
end

private
	def video_params
      params.require(:video).permit(:link)
    end

end
