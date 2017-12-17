class OptsController < ApplicationController
  before_action :set_opt, only: [:show, :edit, :update, :destroy]

  # GET /opts
  # GET /opts.json
  def index
    @opts = Opt.all
  end

  # GET /opts/1
  # GET /opts/1.json
  def show
  end

  # GET /opts/new
  def new
    @opt = Opt.new
  end

  # GET /opts/1/edit
  def edit
  end

  # POST /opts
  # POST /opts.json
  def create
    @opt = Opt.new(opt_params)

    respond_to do |format|
      if @opt.save
        format.html { redirect_to @opt, notice: 'Opt was successfully created.' }
        format.json { render :show, status: :created, location: @opt }
      else
        format.html { render :new }
        format.json { render json: @opt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opts/1
  # PATCH/PUT /opts/1.json
  def update
    respond_to do |format|
      if @opt.update(opt_params)
        format.html { redirect_to @opt, notice: 'Opt was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt }
      else
        format.html { render :edit }
        format.json { render json: @opt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opts/1
  # DELETE /opts/1.json
  def destroy
    @opt.destroy
    respond_to do |format|
      format.html { redirect_to opts_url, notice: 'Opt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt
      @opt = Opt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt_params
      params.require(:opt).permit(:class, :user, :adjective_id)
    end
end
