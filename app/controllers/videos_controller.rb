class VideosController < ApplicationController

def index
	@videos = Video.all
end

def show
	@video = Video.findparams([:id])
end

def new
end


def create
end


def destroy
end


def edit
end



end
