class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]


  
  
  # GET /beers
  # GET /beers.json
  def index
  
    @search = Beer.search(params[:q])
    @beers = @search.result
	
	respond_to do |format|
      format.html
      format.csv { render text: @beers.to_csv }
	end
	  
  end

  # GET /beers/1
  # GET /beers/1.json
  def show
  end

  # GET /beers/new
  def new
    @beer = Beer.new
	
	@options_malt = Malt.all.
		collect do |s| 
			[s.name, s.id]
		end
		
	@options_hop = Hop.all.
		collect do |s| 
			[s.name, s.id]
		end
	
	@options_yeast = Yeast.all.
		collect do |s| 
			[s.name, s.id]
		end
	
  end

  # GET /beers/1/edit
  def edit
  
  @options_malt = Malt.all.
		collect do |s| 
			[s.name, s.id]
		end
		
	@options_hop = Hop.all.
		collect do |s| 
			[s.name, s.id]
		end
	
	@options_yeast = Yeast.all.
		collect do |s| 
			[s.name, s.id]
		end
  end

  # POST /beers
  # POST /beers.json
  def create
    @beer = Beer.new(beer_params)

    respond_to do |format|
      if @beer.save
        format.html { redirect_to @beer, notice: 'Beer was successfully created.' }
        format.json { render :show, status: :created, location: @beer }
      else
        format.html { render :new }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beers/1
  # PATCH/PUT /beers/1.json
  def update
    respond_to do |format|
      if @beer.update(beer_params)
        format.html { redirect_to @beer, notice: 'Beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer }
      else
        format.html { render :edit }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beers/1
  # DELETE /beers/1.json
  def destroy
    @beer.destroy
    respond_to do |format|
      format.html { redirect_to beers_url, notice: 'Beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find(params[:id])
	  
	  @options_malt = Malt.all.
		collect do |s| 
			[s.name, s.id]
		end
		
	@options_hop = Hop.all.
		collect do |s| 
			[s.name, s.id]
		end
	
	@options_yeast = Yeast.all.
		collect do |s| 
			[s.name, s.id]
		end
	
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_params
      params.require(:beer).permit(:name, :abv, :malt_id, :hop_id, :yeast_id)
    end
end
