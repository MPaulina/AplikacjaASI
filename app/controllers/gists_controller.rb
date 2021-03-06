class GistsController < ApplicationController
  before_action :set_gist, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_logged, only: [:edit,:update,:destroy]

  def index
    @gists = Gist.paginate(:page => params[:page]).order('created_at DESC').search(params[:search])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end

  def new
    @gist = Gist.new
  end

  def create
    @gist = Gist.new(gist_params)
    respond_to do |format|
      if @gist.save
        format.html { redirect_to @gist, notice: 'Gist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gist }
      else
        format.html { render action: 'new' }
        format.json { render json: @gist.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end


  def update
    respond_to do |format|
      if @gist.update(gist_params)
        format.html { redirect_to @gist, notice: 'Gist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gist.destroy
    respond_to do |format|
      format.html { redirect_to gists_url }
      format.json { head :no_content }
    end
  end

  def search
    @gists = Gist.search(params[:lang])
  end

  private
    def set_gist
      @gist = Gist.find(params[:id])
    end

    def gist_params
      params.require(:gist).permit(:snippet, :lang, :description, :group_id)
    end
end
