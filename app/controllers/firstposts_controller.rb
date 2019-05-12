class FirstpostsController < ApplicationController
  before_action :set_firstpost, only: [:show, :edit, :update, :destroy]

  # GET /firstposts
  # GET /firstposts.json
  def index
    @firstposts = Firstpost.all
  end

  # GET /firstposts/1
  # GET /firstposts/1.json
  def show
  end

  # GET /firstposts/new
  def new
    @firstpost = Firstpost.new
  end

  # GET /firstposts/1/edit
  def edit
  end

  # POST /firstposts
  # POST /firstposts.json
  def create
    @firstpost = Firstpost.new(firstpost_params)

    respond_to do |format|
      if @firstpost.save
        format.html { redirect_to @firstpost, notice: 'Firstpost was successfully created.' }
        format.json { render :show, status: :created, location: @firstpost }
      else
        format.html { render :new }
        format.json { render json: @firstpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firstposts/1
  # PATCH/PUT /firstposts/1.json
  def update
    respond_to do |format|
      if @firstpost.update(firstpost_params)
        format.html { redirect_to @firstpost, notice: 'Firstpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @firstpost }
      else
        format.html { render :edit }
        format.json { render json: @firstpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firstposts/1
  # DELETE /firstposts/1.json
  def destroy
    @firstpost.destroy
    respond_to do |format|
      format.html { redirect_to firstposts_url, notice: 'Firstpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firstpost
      @firstpost = Firstpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firstpost_params
      params.require(:firstpost).permit(:title, :content, :image)
    end
end
