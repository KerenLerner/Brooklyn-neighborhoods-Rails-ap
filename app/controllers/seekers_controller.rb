#require 'pry'
class SeekersController < ApplicationController
  before_action :set_seeker, only: [:show, :edit, :update, :destroy]

  # GET /seekers
  # GET /seekers.json
  def index
    @seekers = Seeker.all
  end

  # GET /seekers/1
  # GET /seekers/1.json
  def show
  end

  # GET /seekers/new
  def new
    @seeker = Seeker.new
  end

  # GET /seekers/1/edit
  def edit
  end

  # POST /seekers
  # POST /seekers.json
  def create


    @seeker = Seeker.new(seeker_params)
      #binding.pry

    # respond_to do |format|
      if @seeker.save

        all_neighborhoods = Neighborhood.all
        #binding.pry
        @matches = @seeker.match(all_neighborhoods)

        # format.html { redirect_to @seeker, notice: 'Seeker was successfully created.' }
       render template: "seekers/show"

      else
        # format.html { render :new }
          render :new
      # end
    end
  end

  # PATCH/PUT /seekers/1
  # PATCH/PUT /seekers/1.json
  def update
  
      if @seeker.update(seeker_params)

        all_neighborhoods = Neighborhood.all
        #binding.pry
        @matches = @seeker.match(all_neighborhoods)

        # format.html { redirect_to @seeker, notice: 'Seeker was successfully created.' }
       render template: "seekers/show"
        # format.html { redirect_to @seeker, notice: 'Seeker was successfully updated.' }
       
      else
        render :edit 
     
      end
  
  end

  # DELETE /seekers/1
  # DELETE /seekers/1.json
  def destroy
    @seeker.destroy
    respond_to do |format|
      format.html { redirect_to seekers_url, notice: 'Seeker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeker
      @seeker = Seeker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seeker_params
      params.require(:seeker).permit(:seeker_name, :seeker_rent, :seeker_park, :seeker_activities, :seeker_architecture, :seeker_commute)
    end
end
