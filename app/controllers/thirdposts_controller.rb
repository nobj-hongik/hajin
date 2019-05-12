class ThirdpostsController < ApplicationController
  before_action :set_thirdpost, only: [:show, :edit, :update, :destroy]

  # GET /thirdposts
  # GET /thirdposts.json
  def index
    @thirdposts = Thirdpost.all
  end

  # GET /thirdposts/1
  # GET /thirdposts/1.json
  def show
  end

  # GET /thirdposts/new
  def new
    @thirdpost = Thirdpost.new
  end

  # GET /thirdposts/1/edit
  def edit
  end

  # POST /thirdposts
  # POST /thirdposts.json
  def create
    @thirdpost = Thirdpost.new(thirdpost_params)

    respond_to do |format|
      if @thirdpost.save
        format.html { redirect_to @thirdpost, notice: 'Thirdpost was successfully created.' }
        format.json { render :show, status: :created, location: @thirdpost }
      else
        format.html { render :new }
        format.json { render json: @thirdpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirdposts/1
  # PATCH/PUT /thirdposts/1.json
  def update
    respond_to do |format|
      if @thirdpost.update(thirdpost_params)
        format.html { redirect_to @thirdpost, notice: 'Thirdpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @thirdpost }
      else
        format.html { render :edit }
        format.json { render json: @thirdpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirdposts/1
  # DELETE /thirdposts/1.json
  def destroy
    @thirdpost.destroy
    respond_to do |format|
      format.html { redirect_to thirdposts_url, notice: 'Thirdpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirdpost
      @thirdpost = Thirdpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirdpost_params
      params.require(:thirdpost).permit(:title, :content, :image)
    end
end
