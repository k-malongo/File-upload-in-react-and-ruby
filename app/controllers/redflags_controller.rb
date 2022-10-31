class RedflagsController < ApplicationController
  before_action :set_redflag, only: %i[ show update destroy ]

  # GET /redflags
  def index
    @redflags = Redflag.all

    render json: @redflags
  end

  # GET /redflags/1
  def show
    render json: RedflagSerializer.new(@redflag).serializable_hash[:data][:attributes]
  end
  def latest
    # @redflags = Redflag.last.to_json(include: [:image])
    # render json: @redflag
  end

  # POST /redflags
  def create
    @redflag = Redflag.new(redflag_params)

    if @redflag.save
      # render json: @redflag, status: :created, location: @redflag
      render json: RedflagSerializer.new(@redflag).serializable_hash[:data][:attributes]

    else
      render json: @redflag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /redflags/1
  def update
    if @redflag.update(redflag_params)
      render json: @redflag
    else
      render json: @redflag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /redflags/1
  def destroy
    @redflag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redflag
      @redflag = Redflag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def redflag_params
      params.permit(:description, :image, :location, :video, :status, :user_id)
    end
end
