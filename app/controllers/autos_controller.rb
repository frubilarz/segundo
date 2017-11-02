class AutosController < ApplicationController
  def mostrar
    @auto = Auto.find(params[:id])
  end


  def index
    @autos = Auto.all
  end

  def nuevo
    @auto = Auto.new
  end

  def crear
    @auto = Auto.new(auto_params)
    respond_to do |format|
      if @auto.save
        format.html {redirect_to auto_path(@auto), notice: 'Se Persistio la auto'}
      else
        format.html {render :nuevo}
      end
    end
  end

  private


  #strong params
  def persona_params
    params.require(:auto).permit(:persona_id)
  end

end
