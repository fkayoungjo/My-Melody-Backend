class Api::V1::MelodiesController < ApplicationController
before_action :set_melody, only: [:show,:update,:destroy]
  def index
   @melodies = Melody.all
   render json: @melodies, status: 200
 end

 def create
   @melody = Melody.create(melodies_params)
   render json: @melody, status: 201
 end

 def show
   render json: @melody, status: 200
 end

 def update
    @melody.update(melodies_params)

      render json: @melody, status: :accepted

  end

  private

  def melodies_params
    params.require(:melody).permit(:title, :content, :checked)
  end

  def set_melody
    @melody = Melody.find(params[:id])
  end

 end
