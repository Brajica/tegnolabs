class ValoracionsController < ApplicationController
  def new
   @valoracion=Valoracion.new
  end
  def create
   @valoracion = Valoracion.new(parametros)
   respond_to do |format|
       if @valoracion.save
         format.html { redirect_to root_path, notice: 'Valoracion hecha' }
         format.json { render :show, status: :created, location: @client }
       else
         format.html { render :new }
         format.json { render json: @client.errors, status: :unprocessable_entity }
       end
   end
 end

  def destroy

  end
  private
   def parametros
      params.require(:valoracion).permit(:nombre)
   end
end
