class PersonasController < ApplicationController
  before_action :set_persona, only: [:mostrar, :editar, :update,:eliminar]

  def index
    @personas = Persona.paginate(:page => params[:page], :per_page => 12)
  end

  def mostrar
  end

  def eliminar
    @persona = Persona.find(params[:id])
    @persona.destroy
    respond_to do |format|
      format.html{redirect_to personas_path, notice: 'eliminado'}
    end

  end

  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html {redirect_to persona_path(@persona), notice: 'Se Actualizaron los datos'}
      else
        render :editar
      end
    end
  end

  def nuevo
    @persona = Persona.new
  end

  def crear
    @persona = Persona.new(persona_params)
    respond_to do |format|
      if @persona.save
        format.html {redirect_to persona_path(@persona), notice: 'Se Persistio la persona'}
      else
        format.html {render :nuevo}
      end
    end
  end

  def editar
  end

  private

  def set_persona
    @persona = Persona.find(params[:id])
  end

  def persona_params
    params.require(:persona).permit(:nombres, :apellidos, :fecha_nacimiento, :direccion)
  end

end
