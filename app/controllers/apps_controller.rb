class AppsController < ApplicationController

  before_action :set_app, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only:[:new,:create,:edit,:update,:destroy]
  # GET /apps
  # GET /apps.json
  def index
    if request.get?
     @v=params[:post]
     if @v == "0"
         @apps=App.profesores
       elsif @v == "1"
         @apps=App.estudiantes
       else
         @apps=App.all
     end
    end
  end


  #metodo filtros (POST)
  def filtros
     @apps= App.where(rol: params[:rol]).or(App.where(plataforma:
      params[:plataforma]).or(App.where(area: params[:area])))
        respond_to do |format|
          format.json{render :json => @apps}
          format.js
        end
  end
  # GET /apps/1
  # GET /apps/1.json
  def show
    @claridad=Rating.where(:app_id => params[:id]).average(:claridad)
    @contenido=Rating.where(:app_id => params[:id]).average(:contenido)
    @motivacion=Rating.where(:app_id => params[:id]).average(:motivacion)
    @interaccion=Rating.where(:app_id => params[:id]).average(:interaccion)
  end


  # GET /apps/new
  def new
    @app = App.new
  end

  # GET /apps/1/edit
  def edit
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(app_params)

    respond_to do |format|
      if @app.save
        format.html { redirect_to @app, notice: 'App was successfully created.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to @app, notice: 'App was successfully updated.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to apps_url, notice: 'App was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:titulo, :cuerpo, :plataforma, :idioma, :sitio_web, :imagen,:rol)
    end
    def filtros_permitidos
         params.require(:app).permit( :plataforma, :rol,:area)
    end
end
