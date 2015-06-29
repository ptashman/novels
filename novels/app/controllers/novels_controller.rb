class NovelsController < ApplicationController
  before_action :set_novel, only: [:show, :update, :destroy]

  # GET /novels
  # GET /novels.json
  def index
    @novels = Novel.all

    render json: @novels
  end

  # GET /novels/1
  # GET /novels/1.json
  def show
    render json: @novel
  end

  # POST /novels
  # POST /novels.json
  def create
    @novel = Novel.new(novel_params)

    if @novel.save
      render json: @novel, status: :created, location: @novel
    else
      render json: @novel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /novels/1
  # PATCH/PUT /novels/1.json
  def update
    @novel = Novel.find(params[:id])

    if @novel.update(novel_params)
      head :no_content
    else
      render json: @novel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /novels/1
  # DELETE /novels/1.json
  def destroy
    @novel.destroy

    head :no_content
  end

  private

    def set_novel
      @novel = Novel.find(params[:id])
    end

    def novel_params
      params[:novel]
    end
end
