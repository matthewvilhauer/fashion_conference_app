class SpeakerController < ApplicationController

  def index
    @speakers = Speaker.all
  end

  def new
    @speaker = Speaker.new
  end

  def show
    @speaker = Speaker.find(params[:id])
  end

  def create
  end

  def update
  end

  def delete
  end
end
