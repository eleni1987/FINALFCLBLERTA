class FitnessClassesController < ApplicationController
  before_action :set_fitness_class, only: [:show, :edit, :update, :destroy]
  

  # GET /fitness_classes or /fitness_classes.json
  def index
    @fitness_classes = FitnessClass.all
  end

  # GET /fitness_classes/1 or /fitness_classes/1.json
  def show
  end

  # GET /fitness_classes/new
  def new
    @fitness_class = FitnessClass.new
  end

  # GET /fitness_classes/1/edit
  def edit
  end

  # POST /fitness_classes or /fitness_classes.json
  def create
    @fitness_class = FitnessClass.new(fitness_class_params)

    respond_to do |format|
      if @fitness_class.save
        format.html { redirect_to @fitness_class, notice: "Fitness class was successfully created." }
        format.json { render :show, status: :created, location: @fitness_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fitness_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitness_classes/1 or /fitness_classes/1.json
  def update
    respond_to do |format|
      if @fitness_class.update(fitness_class_params)
        format.html { redirect_to @fitness_class, notice: "Fitness class was successfully updated." }
        format.json { render :show, status: :ok, location: @fitness_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fitness_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitness_classes/1 or /fitness_classes/1.json
  def destroy
    @fitness_class.destroy
    respond_to do |format|
      format.html { redirect_to fitness_classes_url, notice: "Fitness class was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  

#Search action
def search
  if key= "%#{params[:q]}%" 
  @fitness_classes = FitnessClass.where('name LIKE :q OR address LIKE :q OR offerdBy LIKE :q OR hourAndDateAvailable LIKE :q OR price LIKE :q', q: key)
  
  end
end
  
 def search1
  
   if key= "%#{params[:q]}%" 
  @fitness_classes = FitnessClass.where('name LIKE :q OR address LIKE :q OR offerdBy LIKE :q OR hourAndDateAvailable LIKE :q OR price LIKE :q', q: key)
  
   if not @fitness_classes.empty?  
#@fitness_classes = FitnessClass.search(:q)

  flash[:notice] = "No results found for #{params[:key]}"
  @fitness_classes = FitnessClass.all
end 
end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitness_class
      @fitness_class = FitnessClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fitness_class_params
      params.require(:fitness_class).permit(:image_url, :name, :offerdBy, :address, :hourAndDateAvailable, :price)
    end
    
    

end

