class SecondpostsController < ApplicationController
  before_action :set_secondpost, only: [:show, :edit, :update, :destroy]

  # GET /secondposts
  # GET /secondposts.json
  def index
    @secondposts = Secondpost.all
  end

  # GET /secondposts/1
  # GET /secondposts/1.json
  def show
  end

  # GET /secondposts/new
  def new
    @secondpost = Secondpost.new
  end

  # GET /secondposts/1/edit
  def edit
  end

  # POST /secondposts
  # POST /secondposts.json
  def create
    @secondpost = Secondpost.new(secondpost_params)

    respond_to do |format|
      if @secondpost.save
        format.html { redirect_to @secondpost, notice: 'Secondpost was successfully created.' }
        format.json { render :show, status: :created, location: @secondpost }
      else
        format.html { render :new }
        format.json { render json: @secondpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secondposts/1
  # PATCH/PUT /secondposts/1.json
  def update
    respond_to do |format|
      if @secondpost.update(secondpost_params)
        format.html { redirect_to @secondpost, notice: 'Secondpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @secondpost }
      else
        format.html { render :edit }
        format.json { render json: @secondpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondposts/1
  # DELETE /secondposts/1.json
  def destroy
    @secondpost.destroy
    respond_to do |format|
      format.html { redirect_to secondposts_url, notice: 'Secondpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secondpost
      @secondpost = Secondpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secondpost_params
      params.require(:secondpost).permit(:title, :content, :image)
    end
end
